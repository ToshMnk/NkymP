using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;

namespace NakayamaWPF.ViewModel
{
    public abstract class ViewModelBase : INotifyPropertyChanged
    {
        //Notificar sobre cambios 
        public event PropertyChangedEventHandler? PropertyChanged;

        public void OnpropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }
}
