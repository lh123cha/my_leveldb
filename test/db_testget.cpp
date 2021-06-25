//
// Created by lh123 on 6/19/21.
//
#include <iostream>

#include "leveldb/db.h"

int main(void) {
     leveldb::DB* db;
     leveldb::Options options;

     options.create_if_missing = true;
     leveldb::Status status = leveldb::DB::Open(options, "testdb", &db);
     if (!status.ok()) {
         printf("%s\n", status.ToString().c_str());
       }
    printf("%s\n","success open");
    std::string key = "001";
     std::string value = "world";
     std::string exist_key = "nwlrbbmqbhcdarzowkkyhiddqscdxrjmowfr";
     std::string empty_value;
//     status = db->Put(leveldb::WriteOptions(), key, value);
//     if (!status.ok()) {
//         printf("%s\n", status.ToString().c_str());
//       }
    printf("%s\n","success put");
     status = db->Get(leveldb::ReadOptions(), key, &empty_value);
     if (!status.ok()) {
       printf("%s\n","faild get");
         printf("%s\n", status.ToString().c_str());
       }
       std::cout<<empty_value<<std::endl;
   }