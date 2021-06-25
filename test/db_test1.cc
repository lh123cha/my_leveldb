#include "leveldb/db.h"
#include <cstdio>
#include <iostream>

using namespace std;
using namespace leveldb;

int main() {
  DB *db = nullptr;
  Options op;
  op.create_if_missing = true;
  op.use_hash_table= true;
  Status status = DB::Open(op, "testdb", &db);
  assert(status.ok());


  string s[100];
  int i = 0;
//  ColumnFamilyHandler cfh=ColumnFamilyHandler("test1");
//  db->Put(WriteOptions(), "1",cfh,"111");
  db->PutWithIndex(WriteOptions(), "3","333");
  Iterator* iter1 = db->NewIndexIterator(ReadOptions());
//  std::string empty_value;
//  std::string key="1";
//  status = db->Get(ReadOptions(), cfh,key, &empty_value);
//  if (!status.ok()) {
//    printf("%s\n","faild get");
//    printf("%s\n", status.ToString().c_str());
//  }
//  std::cout<<empty_value<<std::endl;
//  Iterator* iter1 = db->NewColumnFamilyIterator(ReadOptions(),cfh);
  i = 0;
  for(iter1->SeekToFirst(); iter1->Valid(); iter1->Next()){
    s[i] += iter1->key().ToString()+" : "+iter1->value().ToString();
    i ++;
  }
  for(i;i>=0;i--){
    cout<<s[i]<<endl;
  }

  delete iter1;
  return 0;
}
