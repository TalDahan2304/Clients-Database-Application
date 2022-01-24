import {useState} from 'react';
import {useEffect} from 'react';
import './App.css';
import Axios from 'axios'

function App() {
  const [fullName, setfullName]= useState('')
  const [ID, setID]= useState('')
  const [ipAddress, setipAddress]= useState('')
  const [phoneNumber, setphoneNumber]= useState('')
  const [clientList, setClientList]=useState([])

  useEffect(()=>{
    Axios.get("http://localhost:3003/api/get").then((response)=>{
      setClientList(response.data);
      
    });
  },[]);

  let data = JSON.stringify({fullName:fullName, ID:ID, ipAddress:ipAddress, phoneNumber:phoneNumber});

  const addClient = () =>{
    Axios.post("http://localhost:3003/api/insert", data, {headers:{"Content-Type" : "application/json"}})
    .then(function(response) {
        console.log(response);
      }).catch(function(error) {
        console.log(error);
      })
  };
  // const addClient = () =>{
  //    Axios.post("http://localhost:3003/api/insert", {
  //      fullName:fullName, ID:ID, ipAddress:ipAddress, phoneNumber:phoneNumber
  //    }).then(()=>{
  //      alert("succesful insert");
  //    });
  // };

  return (
    <div className="App">
      <h1>Clients database Application</h1>
      <div className="form">
      <input type="text" placeholder="Full Name" name="FullName" onChange={(e)=>{
        setfullName(e.target.value)
      }} />
      <input type="text" placeholder="ID" name="ID" onChange={(e)=>{
        setID(e.target.value)
      }}  />
      <input type="text" placeholder="IP Address" name="IPAddress" onChange={(e)=>{
        setipAddress(e.target.value)
      }}  />
      <input type="text" placeholder="Phone Number" name="PhoneNumber"onChange={(e)=>{
        setphoneNumber(e.target.value)
      }}  />
      <button onClick = {addClient}>Add</button>
      
   
      
      {clientList.map((val)=>{
          return (
          <h1>
          Full Name: {val.fullName} | ID:{val.ID} | ipAddress:{val.ipAddress} | phoneNumber:{val.phoneNumber}
          </h1>
          );
          
      })};

      </div>
    </div>
  );
}

export default App;
