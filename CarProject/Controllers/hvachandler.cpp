#include "hvachandler.h"

HVACHandler::HVACHandler(QObject *parent) : QObject(parent), m_targetTemprature(70)
{

}

int HVACHandler::targetTemprature() const
{
    return m_targetTemprature;
}

void HVACHandler::incrementTargetTemprature(const int &val)
{
    int newTargetTemp = m_targetTemprature+ val;
    setTargetTemprature(newTargetTemp);
}

void HVACHandler::setTargetTemprature(int targetTemprature)
{
    if (m_targetTemprature == targetTemprature)
        return;

    m_targetTemprature =targetTemprature;
    emit targetTempratureChanged(m_targetTemprature);
}


