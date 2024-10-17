using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using NakayamaWPF.Model;
using NakayamaWPF.Repositorios;

namespace NakayamaWPF.ViewModel
{
    public class MainViewModel : ViewModelBase
    {
        //campos
        private UserAccountModel _currentUserAcount;
        private IUserRepository _userRepository;

        public UserAccountModel CurrentUserAcount 
        { 
            get 
            {
                return _currentUserAcount;
            }
            set 
            {
                _currentUserAcount = value;
                OnpropertyChanged(nameof(CurrentUserAcount));
            } 
        }

        public MainViewModel()
        {
            _userRepository = new UserRepository();
            CurrentUserAcount = new UserAccountModel();
            LoadCurrentUserData();
        }
        private void LoadCurrentUserData()
        {
            var user = _userRepository.GetByUsername(Thread.CurrentPrincipal.Identity.Name);
            if (user != null)
            {

                CurrentUserAcount.Username = user.Username;
                CurrentUserAcount.DisplayName = $"Welcome{user.Name} {user.LastName};)";
                CurrentUserAcount.ProfilePicture = null;
                
            }
            else
            {
                CurrentUserAcount.DisplayName = "Usuario no Valido";
            }
        }
    }
}
