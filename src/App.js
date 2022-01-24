
import './App.css';

function App() {
  return (
    <div className="App">
      <h1>Clients database Application</h1>
      <div className="form">
      <input type="text" placeholder="Full Name" name="Full Name" />
      <input type="text" placeholder="ID" name="ID" />
      <input type="text" placeholder="IP Address" name="IPAddress" />
      <input type="text" placeholder="Phone Number" name="phoneNumber" />
      <button>Add</button>
      </div>
    </div>
  );
}

export default App;
