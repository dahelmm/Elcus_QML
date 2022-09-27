#include "connecttoelcus.h"

ConnectToElcus::ConnectToElcus(QObject *ui, QObject * parent) :
    QObject(parent)
{
    if(ui)
    {
        connect(ui, SIGNAL(elcusStateChanged(bool)), this, SLOT(stateChanged(bool)));
    }
}

void ConnectToElcus::stateChanged(bool state)
{

}
