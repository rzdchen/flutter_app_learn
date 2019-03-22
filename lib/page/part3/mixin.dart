
class S {
  a() => print('S.a');
}
class A{
  a() => print("A.a");
  b() => print("A.b");
}
class T = S with A;

main(List<String> args){
  T t = T();
  t.a();
  t.b();
}