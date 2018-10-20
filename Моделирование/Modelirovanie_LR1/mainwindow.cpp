#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "lusolve.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    //      Добавление элементов, в которые можно вбить матрицу
    currSize = 4;
    srand(time(NULL));
    int decimals = 3;


    for (int i = 0; i < 10; ++i){
        QDoubleSpinBox *box = new QDoubleSpinBox();
        box->setMinimum(0);
        box->setMaximum(1);
        box->setDecimals(decimals);
        box->setSingleStep(0.01);
        box->setGeometry(10, 80 + i * 20, 25, 25);
        if (i > (currSize - 1))
            box->hide();
        ui->horizontalLayout->addWidget(box);
        startPos.push_back(box);
    }

    for (int i = 0; i < 10; ++i){
        QVector <QDoubleSpinBox *> arr;
        for (int j = 0; j < 10; ++j){
            QDoubleSpinBox *box = new QDoubleSpinBox();
            box->setMinimum(0);
            box->setMaximum(1);
            box->setDecimals(decimals);
            box->setSingleStep(0.01);
            if (!((i <= (currSize - 1)) && (j <= (currSize - 1)))){
                box->hide();
            }
            ui->gridLayout->addWidget(box, i, j);
            box->setGeometry(10 + j * 25, 80 + i * 20, 25, 25);
            arr.push_back(box);
        }
        matrix.push_back(arr);
    }

    for (int i = 0; i < 10; ++i){
        QDoubleSpinBox *box1 = new QDoubleSpinBox();
        box1->setReadOnly(true);
        box1->setMinimum(0);
        box1->setMaximum(1);
        box1->setDecimals(decimals);
        box1->setSingleStep(0.01);
        box1->setGeometry(10, 80 + i * 20, 25, 25);
        if (i > (currSize - 1))
            box1->hide();
        ui->verticalLayout->addWidget(box1);
        finale_1.push_back(box1);
    }

    for (int i = 0; i < 10; ++i){
        QDoubleSpinBox *box2 = new QDoubleSpinBox();
        box2->setReadOnly(true);
        box2->setMinimum(0);
        box2->setMaximum(1);
        box2->setDecimals(decimals);
        box2->setSingleStep(0.01);
        box2->setGeometry(10, 80 + i * 20, 25, 25);
        if (i > (currSize - 1))
            box2->hide();
        ui->verticalLayout_2->addWidget(box2);
        finale_2.push_back(box2);
    }
    startPos[0]->setValue(0.75);
    startPos[1]->setValue(0.2);
    startPos[2]->setValue(0.05);
    matrix[0][1]->setValue(0.3);
    matrix[0][2]->setValue(0.6);
    matrix[0][3]->setValue(0.1);
    matrix[1][0]->setValue(0.4);
    matrix[1][2]->setValue(0.6);
    matrix[2][1]->setValue(0.5);
    matrix[2][2]->setValue(0.5);
    matrix[3][2]->setValue(1);
}

MainWindow::~MainWindow()
{
    delete ui;
}

//          Слот для изменения разрядности вбиваемой матрицы
void MainWindow::on_spinBox_valueChanged(int arg1)
{
    currSize = arg1;
    for (int i = 0; i < 10; ++i){
        for (int j = 0; j < 10; ++j){
            matrix[i][j]->hide();
            if (((i < arg1) && (j < arg1)))
                matrix[i][j]->show();
        }
        startPos[i]->hide();
        if (i < arg1)
            startPos[i]->show();

        finale_1[i]->hide();
        if (i < arg1)
            finale_1[i]->show();

        finale_2[i]->hide();
        if (i < arg1)
            finale_2[i]->show();
    }
}

void MainWindow::on_pushButton_clicked()
{
    //      Проверка на правильность ввода
    bool isRight = true;
    QString logText = "No errors";
    double sum2 = 0;
    for (int i = 0; i < currSize; ++i){
        double sum1 = 0;
        for (int j = 0; j < currSize; ++j){
            sum1 += matrix[i][j]->value();
        }
        if (abs(sum1 - 1) > 0.001){
            isRight = false;
            logText = "Вероятности расставлены неверно";
        }
        sum2 += startPos[i]->value();
    }
    if (abs(sum2 - 1) > 0.001){
        isRight = false;
        logText = "Вероятности расставлены неверно";
    }
    ui->textEdit->setText(logText);
    //      Решение
    if (isRight){
        MarkWithRandomTime();
        MarkAnalyticSolve();
    }
}

void MainWindow::MarkWithRandomTime(){
    // Метод 1
    double randomValue = rand() % 100 * 1.0 / 100;
    int currentState = 0;

    //  Назначение массива (Сколько раз был в состоянии)
    int *countState = new int[currSize];
    for (int i = 0; i < currSize; ++i)
        countState[i] = 0;

    //  Начало решения
    for (int k = 0; k < ui->spinBox_2->value(); ++k){
        //  Установка начального состояния
        double sum = startPos[0]->value();
        int i = 0;
        while (sum < randomValue){
            i++;
            sum += startPos[i]->value();
        }
        currentState = i;

        // Решение
        for (int i = 0; i < 10000; ++i){
            randomValue = rand() % 100 * 1.0 / 100;
            sum = matrix[currentState][0]->value();
            int j = 0;
            while (sum <= randomValue){
                j++;
                sum += matrix[currentState][j]->value();
            }
            countState[currentState]++;
            currentState = j;
        }
    }
    //  Вывод финальных вероятностей
    for (int i = 0; i < currSize; ++i){
        finale_1[i]->setValue(countState[i] * 1.0 / (10000 * ui->spinBox_2->value()));
    }
}

void MainWindow::MarkAnalyticSolve(){
    int kSize = currSize + 1;
    vector<vector<double>> a;
    a.resize(kSize);
    fill_n(a.begin(), kSize, vector<double>(kSize));
    for (int i = 0; i < kSize - 1; ++i){
        for (int j = 0; j < kSize - 1; ++j){
            a[j][i] = matrix[i][j]->value();
            if (i == j){
                a[i][j] -= 1;
            }
        }
    }
    for (int i = 0; i < kSize - 2; ++i){
        a[kSize - 1][i] = 1;
    }
    vector<double> b;

    b.resize(kSize);
    fill_n(b.begin(), kSize, 0);
    b[kSize - 1] = 1;

    vector<double> result1 = LuSolve(a, b, kSize);
    for (int i = 0; i < kSize; ++i){
        finale_2[i]->setValue(result1[i]);
    }
}

void MainWindow::MarkWithEndlessTime(){
    vector<double> fTime(currSize);
    double maxTime = 10000;
    //  Обнуление переменных
    fill_n(fTime.begin(), currSize, 0);
    double time = 0;
    double randomValue = rand() % 100 * 1.0 / 100;
    int currentState = 0;

    //  Выбираем начальное состояние
    double sum = startPos[0]->value();
    int i = 0;
    while (sum < randomValue){
        i++;
        sum += startPos[i]->value();
    }
    currentState = i;

    //  Имитируем работу в течении n-ого времени
    for (int i = 0; i < currSize; ++i){
        randomValue = rand() % 10000 * 1.0 / 10000;
        fTime = - 1 / matrix[currentState][i] * ln(randomValue);
    }

}
