import React, { useState } from 'react';
import './App.css';

function App() {
  const [count, setCount] = useState(0);

  return (
    <div style={{ textAlign: 'center', marginTop: '50px' }}>
      <h1>Hello, Docker!</h1>
      <p>Вы нажали на кнопку {count} раз</p>
      <button onClick={() => setCount(count + 1)}>
        Увеличить счётчик
      </button>
    </div>
  );
}

export default App;