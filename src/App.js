import './App.css';
import Zoom from 'react-reveal/Zoom';
function App() {
  return (
    <div className="App">
      <header className="App-header">
      <h1>
        <div className='headname'>
        <Zoom left cascade>
          Welcome to 
        </Zoom>
        <Zoom right cascade>Coder Corps </Zoom>
        </div>
      </h1>
      </header>
    </div>
  );
}

export default App;
