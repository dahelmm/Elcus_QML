#ifndef CONNECTTOELCUS_H
#define CONNECTTOELCUS_H

#include <QObject>

class ConnectToElcus : public QObject
{
        Q_OBJECT
    public:
        explicit ConnectToElcus(QObject * ui, QObject *parent = nullptr);

    private slots:
        void stateChanged(bool);
};

#endif // CONNECTTOELCUS_H
