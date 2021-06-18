#include "leveldb/db.h"
#include <cstdio>
#include <iostream>

using namespace std;
using namespace leveldb;

int main() {
  DB *db = nullptr;
  Options op;
  op.create_if_missing = true;
  Status status = DB::Open(op, "testdb", &db);
  assert(status.ok());


  ReadOptions op1;
  op1.snapshot = db->GetSnapshot();


  string s[15];
  int i = 0;
//  Iterator* iter = db->NewIterator(op1);
//  for(iter->SeekToFirst(); iter->Valid(); iter->Next()){
//    s[i] = iter->key().ToString() + ' ' + iter->value().ToString() + ' ';
//    i ++;
//  }
  ColumnFamilyHandler cfh=ColumnFamilyHandler("test2");
  db->PutWithIndex(WriteOptions(), "1","111");
  db->PutWithIndex(WriteOptions(), "2","222");
//  Iterator* iter1 = db->NewIterator(ReadOptions());
  Iterator* iter1 = db->NewColumnFamilyIterator(ReadOptions(),cfh);
  i = 0;
  for(iter1->SeekToFirst(); iter1->Valid(); iter1->Next()){
    s[i] += iter1->key().ToString()+" : "+iter1->value().ToString();
    i ++;
  }
  for(i;i>=0;i--){
    cout<<s[i]<<endl;
  }

  delete iter1;
  db->ReleaseSnapshot(op1.snapshot);
  return 0;
}
//int main() {
//    DB* db = nullptr;
//    Options op;
//    op.create_if_missing = true;
//    Status status = DB::Open(op, "testdb", &db);
//    assert(status.ok());
//    ColumnFamilyHandler cfh=ColumnFamilyHandler("test1");
//    db->Put(WriteOptions(), "001", cfh,"leveldb");
//
////    db->Put(WriteOptions(),"002",cfh,"world");
//    Iterator* iter1 = db->NewColumnFamilyIterator(ReadOptions(),cfh);
//    int i = 0;
//    string s[15];
//    if(!iter1->Valid()){
//      cout<<"false"<<endl;
//    }
//    for(iter1->SeekToFirst(); iter1->Valid(); iter1->Next()){
//      s[i] += iter1->key().ToString()+" : "+iter1->value().ToString();
//      i ++;
//    }
//    for(i;i>=0;i--){
//      cout<<s[i]<<endl;
//    }
//    delete db;
//    return 0;
//}

