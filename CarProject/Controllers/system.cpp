#include "system.h"
#include <QDateTime>

System::System(QObject *parent) : QObject(parent), m_carLocked(true),m_outdoorTemp(64), m_UserName("Esma")// initial values
{
  m_CurrentTimeTimer = new QTimer(this);
  m_CurrentTimeTimer->setInterval(500);
  m_CurrentTimeTimer->setSingleShot(true);
  connect(m_CurrentTimeTimer, &QTimer::timeout, this, &System::currentTimeTimerTimeout);
  currentTimeTimerTimeout();
}

bool System::carLocked() const
{
    return m_carLocked;
}

int System::outdoorTemp() const
{
    return m_outdoorTemp;
}

QString System::UserName() const
{
    return m_UserName;
}

QString System::CurrentTime() const
{
    return m_CurrentTime;
}

void System::setCarLocked(bool carLocked)
{
    if (m_carLocked == carLocked)
        return;

    m_carLocked = carLocked;
    emit carLockedChanged(m_carLocked);
}

void System::setOutdoorTemp(int outdoorTemp)
{
    if (m_outdoorTemp == outdoorTemp)
        return;

    m_outdoorTemp = outdoorTemp;
    emit outdoorTempChanged(m_outdoorTemp);
}

void System::setUserName(QString UserName)
{
    if (m_UserName == UserName)
        return;

    m_UserName = UserName;
    emit UserNameChanged(m_UserName);
}

void System::setCurrentTime(QString CurrentTime)
{
    if (m_CurrentTime == CurrentTime)
        return;

    m_CurrentTime = CurrentTime;
    emit CurrentTimeChanged(m_CurrentTime);
}

void System::currentTimeTimerTimeout()
{
    QDateTime dateTime;
    QString currentTime = dateTime.currentDateTime().toString("hh:mm ap");
    setCurrentTime(currentTime);
    m_CurrentTimeTimer->start();
}
