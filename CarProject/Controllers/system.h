#ifndef SYSTEM_H
#define SYSTEM_H

#include <QTimer>
#include <QObject>


class System : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool carLocked READ carLocked WRITE setCarLocked NOTIFY carLockedChanged)
    Q_PROPERTY(int outdoorTemp READ outdoorTemp WRITE setOutdoorTemp NOTIFY outdoorTempChanged)
    Q_PROPERTY(QString UserName READ UserName WRITE setUserName NOTIFY UserNameChanged)
    Q_PROPERTY(QString CurrentTime READ CurrentTime WRITE setCurrentTime NOTIFY CurrentTimeChanged)


public:
    explicit System(QObject *parent = nullptr);

    bool carLocked() const;

    int outdoorTemp() const;

    QString UserName() const;

    QString CurrentTime() const;

public slots:
    void setCarLocked(bool carLocked);

    void setOutdoorTemp(int outdoorTemp);

    void setUserName(QString UserName);

    void setCurrentTime(QString CurrentTime);

    void currentTimeTimerTimeout();

signals:

    void carLockedChanged(bool carLocked);
    void outdoorTempChanged(int outdoorTemp);

    void UserNameChanged(QString UserName);

    void CurrentTimeChanged(QString CurrentTime);

private:
    bool m_carLocked;
    int m_outdoorTemp;
    QString m_UserName;
    QString m_CurrentTime;
    QTimer *m_CurrentTimeTimer;
};

#endif // SYSTEM_H
