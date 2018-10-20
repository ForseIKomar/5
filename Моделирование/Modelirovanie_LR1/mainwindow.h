#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QDoubleSpinBox>
#include <QVector>
#include <QLayoutItem>

#include <cstdlib>
#include <ctime>
#include <vector>

using namespace std;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    void MarkWithRandomTime();

    void MarkAnalyticSolve();

    void MarkWithEndlessTime();

private slots:
    void on_spinBox_valueChanged(int arg1);

    void on_pushButton_clicked();

private:
    Ui::MainWindow *ui;
    QVector <QVector <QDoubleSpinBox *>> matrix;
    QVector <QDoubleSpinBox *> startPos, finale_1, finale_2;
    int currSize;
};

#endif // MAINWINDOW_H
