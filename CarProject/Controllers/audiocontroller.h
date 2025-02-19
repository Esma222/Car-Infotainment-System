#ifndef AUDIOCONTROLLER_H
#define AUDIOCONTROLLER_H

#include <QObject>

class AudioController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int VolumeLvel READ VolumeLvel WRITE setVolumeLvel NOTIFY VolumeLvelChanged)


public:
    explicit AudioController(QObject *parent = nullptr);

    int VolumeLvel() const;

    Q_INVOKABLE void incrementVolume(const int & val);

public slots:
    void setVolumeLvel(int VolumeLvel);

signals:

    void VolumeLvelChanged(int VolumeLvel);

private:
    int m_VolumeLvel;
};

#endif // AUDIOCONTROLLER_H
