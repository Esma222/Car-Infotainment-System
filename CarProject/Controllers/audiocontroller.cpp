#include "audiocontroller.h"

AudioController::AudioController(QObject *parent) : QObject(parent),m_VolumeLvel(10)
{

}

int AudioController::VolumeLvel() const
{
    return m_VolumeLvel;
}

void AudioController::incrementVolume(const int &val)
{
    int newVolume = m_VolumeLvel + val;

    if(newVolume<=0)
        newVolume=0;
    if(newVolume>=100)
        newVolume=100;
    setVolumeLvel(newVolume);
}

void AudioController::setVolumeLvel(int VolumeLvel)
{
    if (m_VolumeLvel == VolumeLvel)
        return;

    m_VolumeLvel = VolumeLvel;
    emit VolumeLvelChanged(m_VolumeLvel);
}
