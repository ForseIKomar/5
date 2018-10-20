#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

vector<double> LuSolve(vector<vector<double>> a, vector<double> b, int size){

    //	Задание необходимых локальных переменных
	double p = 1;
	int cRow = 0;
	int cCol = 0;
	bool Have = false;
	vector<double> swapVector(size);
	for (int i = 0; i < size; ++i){
		a[i][size - 1] = b[i];
	}
	//	Задание допоплнительной матрицы
	vector<vector<double>> mas;
	mas.resize(size);
	fill_n(mas.begin(), size, vector<double>(size));

	for (cCol = 0; cCol < (size - 1);){
		//	Поиск ненулевого элемента
		Have = false;
		cRow = cCol;
		if (a[cCol][cCol] == 0){
			while (!Have){
				while ((cRow < size) && (abs(a[cRow][cCol]) <= 1e-8))
					cRow++;
				if (cRow < size){
					Have = true;
				}
				else{
					cRow = 0;
					cCol++;
				}
			}
		}
		else
			cRow = cCol;
		if (cRow != cCol){
			swapVector = a[cRow];
			a[cRow] = a[cCol];
			a[cCol] = swapVector;
		}

		//	Оооооо, тут ты попал
		//	Это короч, вычисление элементов по формуле
		for (int i = 0; i < size; ++i){
			for (int j = 0; j < size; ++j){
				if (i != cCol){
					mas[i][j] = (a[cCol][cCol] * a[i][j] - a[cCol][j] * a[i][cCol]) / p;
				}
				else
					mas[i][j] = a[i][j];
				if (abs(mas[i][j]) < 1e-8)
					mas[i][j] = 0;
			}
		}


		p = a[cCol][cCol];
		a = mas;
		cCol++;
	}
	for (int i = 0; i < size - 1; ++i){
        swapVector[i] = a[i][size - 1] * 1.0 / a[i][i];
    }
	return swapVector;
}
/*
int main(){
	vector<vector<double>> mas;
	int nsize = 3;
	mas.resize(nsize);
	fill_n(mas.begin(), nsize, vector<double>(nsize));
	for (int i = 0; i < nsize; ++i){
		for (int j = 0; j < nsize; ++j)
			mas[i][j] = 0;
	}
	mas[0][0] = 5;		mas[0][1] = 0.4;
	mas[1][0] = 0;	mas[1][1] = -1;

	vector<double> b;
	b.resize(nsize);
	fill_n(b.begin(), nsize, 0);
	b[1] = 1;

	LuSolve(mas, b, nsize);

}*/
