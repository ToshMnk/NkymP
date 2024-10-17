using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using NakayamaWPF.Model;
using NakayamaWPF.Repositorios;
using System.Net.NetworkInformation;
using System.Net;
using System.Security.Principal;

namespace NakayamaWPF.ViewModel
{
    public class LoginViewModel : ViewModelBase
    {
        //Campos
        private string _username;
        private SecureString _password;
        private string _errorMessage;
        private bool _isViewVisible = true;

        private IUserRepository userRepository;

        //Propiedades
        public string Username 
        {
            get 
            {
                return _username; 
            }
            set 
            {
                _username = value;
                OnpropertyChanged(nameof(Username)); 
            }
        }
        public SecureString Password 
        {
            get { return _password; }
            set 
            {
                _password = value;
                OnpropertyChanged(nameof(Password));
            }
        }
        public string ErrorMessage 
        {
            get { return  _errorMessage; }
            set 
            {
                _errorMessage = value;
                OnpropertyChanged(nameof(ErrorMessage));
            }
        }
        public bool IsViewVisible 
        {
            get { return _isViewVisible; }
            set 
            {
                _isViewVisible = value;
                OnpropertyChanged(nameof(IsViewVisible));
            }
        }

        //-> Comandos
        public ICommand LoginCommand { get; }
        public ICommand RecoverPasswordCommand { get; }
        public ICommand ShowPasswordCommand { get; }
        public ICommand RememberPasswordCommand { get; }

        //->Constructor
        public LoginViewModel()
        {
            userRepository = new UserRepository();
            LoginCommand = new ViewModelCommand(ExecuteLoginCommand, CanExecuteLoginCommand);
            RecoverPasswordCommand = new ViewModelCommand(p => ExecuteRecoverPassCommand("",""));
        }

        private bool CanExecuteLoginCommand(object obj)
        {
            bool validData;
            if (string.IsNullOrWhiteSpace(Username) || Username.Length < 3 ||
                Password == null || Password.Length < 3)
                validData = false;
            else validData = true;
            return validData;
          
        }

        private void ExecuteLoginCommand(object obj)
        {

            var isValidUser = userRepository.AutheticateUser(new NetworkCredential(Username, Password));
            if (isValidUser) 
            {
                Thread.CurrentPrincipal = new GenericPrincipal(
                    new GenericIdentity(Username), null);
                IsViewVisible = false;
            }
            else
            {
                ErrorMessage = "* Usuario o Contraseña invalida";
            }
        }
        private void ExecuteRecoverPassCommand(string username, string email)
        {
            throw new NotImplementedException();
        }
    }
}
