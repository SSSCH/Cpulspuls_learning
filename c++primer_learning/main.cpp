#include <iostream>
#include <vector>
#include <algorithm>
#include <list>
#include <iterator>
#include <numeric>
using namespace std;
/**@brief:输入一个字符数组，将其按字典顺序排序，删除重复单词，按长度排序，打印长度大于输入值的词
 * @brief:练习使用可调用对象之lambda表达式
 * @param：directory：输入string类型数组，sz：要打印长度大于sz的词
 * @note:c++primer,p349
 * */
 string make_plural(size_t length, const string &word, const string &ending){
  return (length > 1) ? word+ending : word;
 }
 void biggies(vector<string> &directory, vector<string>::size_type sz) {
  //从短到长排序
  stable_sort(directory.begin(),
              directory.end(),
              [](const string &a, const string &b) { return a.size() <= b.size(); });
  //获取重复元素的起始迭代器
  auto end_unique = unique(directory.begin(), directory.end());
  //删除重复元素
  directory.erase(end_unique, directory.end());
  //获取大于sz的起始迭代器
  auto itor_BiggerThanSz = find_if(directory.begin(), directory.end(), [sz](const string &a) { return a.size() > sz; });
  //计算大于sz元素的个数,并且打印
  auto count = directory.end() - itor_BiggerThanSz;
  cout<< count << " " << make_plural(count, "word", "s ") << " of length " << sz << " or longer " << endl;
  //打印所有长度大于sz的元素
  for_each(itor_BiggerThanSz, directory.end(), [](const string &s){cout << s << " ";});
  cout << endl;
}
/**测试插入迭代器/流迭代器
 * */
 void test_iterator(){
   list<int> list1 = {1,2,3,4,5};
   list<int> list2, list3;
   //插入迭代器
   copy(list1.begin(), list1.end(), back_inserter(list2));
   copy(list1.begin(), list1.end(), front_inserter(list3));
   //流输出迭代器
   ostream_iterator<int> out_iter(cout, " ");
   list2.remove_if([](int i){ return i >3;});  //删除list2中>3的元素。
   cout << "back_inserter:";
  for (auto e:list2)
    *out_iter++ = e;
  cout << endl;
  cout << "front_inserter";
  list3.merge(list2);
  for (auto e:list3)
    out_iter = e;
   cout << endl;
  //流输入迭代器
   istream_iterator<int> in_iter(cin), eof; //从cin读取int,eof为尾后迭代器
   //cout << accumulate(in_iter, eof, 0) << endl;  //使用算法操作输入流迭代器
   vector<int> vector1;
  while (in_iter != eof && (vector1.size() !=3)) {
    vector1.push_back(*in_iter++);
  }
 cout << "vector1:";
  for (auto e:vector1)
    *out_iter++ = e;
 }
int main() {
  //std::cout << "Hello, World!" << std::endl;
  vector<string> directory = {"c", "b", "brqwerwfd", "ad", "faa", "wefw","addc", "asfawefaw", "faa", "rty", "sdf"};
  vector<string> sf(directory);
  biggies(sf, 0);
  test_iterator();
  return 0;
}