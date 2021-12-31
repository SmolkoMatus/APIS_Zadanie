import requests
import json

dataEmployees = {
        "Name":"Tomas",
        "Hours":278,
        "WorkPositionID":1,
        "EmploymentID":2
    }
dataPayment = {
        
    }
dataEmployeesUpdate = {
        "Name":"Tomas Verný",
        "Hours":478,
        "WorkPositionID":2,
        "EmploymentID":1
    }
dataEmployeesDelete = {
        
        
    }


p = requests.post(url = "https://apiszadaniemzdy.herokuapp.com/CreateEmployee", data = json.dumps(dataEmployees))
print(p)
c = requests.put(url = "https://apiszadaniemzdy.herokuapp.com/UpdateEmployee/10", data = json.dumps(dataEmployeesUpdate))
print(c)
a = requests.delete(url = "https://apiszadaniemzdy.herokuapp.com/DeleteEmployee/12", data = json.dumps(dataEmployeesDelete))
print(a)
d = requests.get(url = "https://apiszadaniemzdy.herokuapp.com/GetPayment", data = json.dumps(dataPayment))
print(d)
