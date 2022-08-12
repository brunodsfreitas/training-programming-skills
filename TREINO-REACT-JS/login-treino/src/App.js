import { useState } from 'react';
import jpIMG from './assets/jp.svg'
import './styles.css'
function App() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  return (
    <div className="container">
      <div className="container-login">
        <div className="wrap-login">
          <div className="login-form">
            <span className="login-form-tittle">Bem Vindo!</span>
            <span className="login-form-tittle">
              <img src={jpIMG} alt="Jovem Programador"/>
              <div className='wrap-input'>
                <input 
                  className={email !== "" ? 'has-val input' : 'input'}
                  type="email"
                  value={email}
                  onChange={e => setEmail(e.target.value)}
                />
                <span className="focus-input" data-placeholder="Email"></span>
              </div>
              <div className="wrap-input">
                <input 
                  className={password !== "" ? 'has-val input' : 'input'}
                  type="password"
                  value={password}
                  onChange={e => setPassword(e.target.value)}
                />
                <span className="focus-input" data-placeholder="Password"></span>
              </div>
              <div className="container-login-form-btn">
                <button className="container-login-form-btn">Login</button>
              </div>
              <div className="text-center">
                <span className="txt1">Não possui conta?</span>
                <a className="txt2" href="#">Criar conta.</a>
              </div>
            </span>
          </div>
        </div>
      </div>
    </div>
  );
}

export default App;
