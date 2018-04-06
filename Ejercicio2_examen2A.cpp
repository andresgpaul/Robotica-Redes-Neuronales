#include <iostream>

using namespace std;

int eva_red(int x1, int x2, double w0, double w1, double w2);

int main(int argc, char** argv){

	double w0 = -4, w1 = 2, w2 = 1;
	int i, pasos = 10, error;
	
	cout << w0 << " " << w1 << " " << w2 << endl;
	for(i = 0; i < pasos; i++){
		error = eva_red(0,1,w0,w1,w2);
			w0 = w0 + error*1;
			w1 = w1 + error*0; //siempre da cero
			w2 = w2 + error*1;
		error = eva_red(1,0,w0,w1,w2);
			w0 = w0 + error*1;
			w1 = w1 + error*1;
			w2 = w2 + error*0; //siempre da cero
		error = eva_red(1,1,w0,w1,w2);
			w0 = w0 + error*1;
			w1 = w1 + error*1;
			w2 = w2 + error*1;
	cout << w0 << " " << w1 << " " << w2 << endl;
	}
	
	return 0;	
}

int eva_red(int x1, int x2, double w0, double w1, double w2){
	int res = 0;
	double red;
	red = w0 + x1*w1 + x2*w2;
	
	if(red < 0){
		red = 1;
	}else{
		red = -1;
	}
	
	if((x1 == 1 && x2 == 1) || (x1 == 0 && x2 == 1)){
		res = 1 - red;
	}else if (x1 == 1 && x2 == 0){
		res = -1 - red;
	}
	
	return res;
}
