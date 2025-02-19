#ifndef HVACHANDLER_H
#define HVACHANDLER_H

#include <QObject>

class HVACHandler : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int targetTemprature READ targetTemprature WRITE setTargetTemprature NOTIFY targetTempratureChanged)
public:
    explicit HVACHandler(QObject *parent = nullptr);

    int targetTemprature() const;

    Q_INVOKABLE void incrementTargetTemprature(const int & val);

public slots:
    void setTargetTemprature(int targetTemprature);

signals:

    void targetTempratureChanged(int targetTemprature);

private:

    int m_targetTemprature;
};

#endif // HVACHANDLER_H
