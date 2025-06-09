import 'package:secuenciafibonacci/secuenciafibonacci.dart' as secuenciafibonacci;

void main(){

print('Programa secuencia fibonacci Williams Avila 20222030516');

int count=0;
int n=16;
int first=0;
int second=1;
int series=0;

while (count<=n){
if (count<=1){
count;

}
else {
  series = first + second;
  first = second;
  second = series;

  print (series);
}
count+=1;
}



}
