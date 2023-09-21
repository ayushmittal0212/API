from flask import Flask,request, jsonify,json
from flask_restful import Api,Resource
# import mysql.connector as sql

# cobj=sql.connect(host='localhost',user='root',passwd='Ayush@123')
# if(cobj.is_connected):
#     print('Database Connected')

# cursor=cobj.cursor()
# cursor.execute('create database user')
# cursor.execute('use user')
# cursor.execute('create table t1(username varchar(20),password varchar(10))')

# print(cursor.fetchall())

app=Flask(__name__)
api=Api(app)

# cursor.execute('use user') 
# sql="select * from t1 where username='{username}'".format(username='Ayush1')
# cursor.execute(sql)
# print(cursor.fetchall())
# cursor.execute('select * from t1')
# print(cursor.fetchall())


class Demo(Resource):
    def get(self):
        print('GET')
        return True
        # print(request.args)
        # re=dict(request.args)
        # sql="select * from t1 where username='{username}'".format(username=re['username'])
        # cursor.execute(sql)
        # data=cursor.fetchall()
        # if(len(data)==0):
        #     return False
        
        # passw = re['password']
        # rpassw=data[0][1]
        # if(passw!=rpassw):
        #     return False
        # return True

    # def get(self,title):
    #     sql="select * from t1 where title='{title}'".format(title=title)
    #     cursor.execute(sql)
        
    #     return jsonify(cursor.fetchall())

    # def post(self):
    #     data1=dict(request.get_json())
    #     title=data1['title']
    #     content=data1['content']
    #     sql="insert into t1 values('{title}','{content}')".format(title=title,content=content)
    #     cursor.execute(sql)
    #     cobj.commit()
        
        # print(json.loads(data))
    
api.add_resource(Demo,'/')

if __name__=="__main__":
    app.run(host="0.0.0.0")


