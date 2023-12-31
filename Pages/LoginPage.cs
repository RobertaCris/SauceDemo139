// Bibliotecas
using System.Runtime.InteropServices.Marshalling;
using OpenQA.Selenium;

// Namespace Pages
namespace Pages
{
// Classe
public class LoginPage : CommonPage // : significa extends
{
// Atributos
    // Mapeamento dos Elementos
    private IWebElement txtUsuario => driver.FindElement(By.Id("user-name")); // => Lambida
    private IWebElement txtSenha => driver.FindElement(By.Id("password"));
     private IWebElement tbtnLogin => driver.FindElement(By.Id("login-button"));

    // Métodos e Funções
        // Construtor
        public LoginPage(IWebDriver driver) : base (driver){}
        // Ações a serem usadas na automação
        public void PreencherUsuarioESenha(String usuario, String senha)
        {
            txtUsuario.SendKeys(usuario);
            txtSenha.SendKeys(senha);
        }

         public void DarEnter()
        {
            txtSenha.SendKeys(Keys.Enter);
        }

    }
}