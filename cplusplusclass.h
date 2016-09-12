#ifndef CPLUSPLUSCLASS_H
#define CPLUSPLUSCLASS_H

#include <QObject>

class CPlusPlusClass: public QObject
{
    Q_OBJECT
    Q_PROPERTY( int rating READ rating )
public:
    explicit CPlusPlusClass( QObject* pParent = Q_NULLPTR ):
        QObject( pParent )
    {
        m_Rating = 5;
    }

    Q_INVOKABLE void method( void )
    {
        qDebug( "[C++]%s is called.", __FUNCTION__ );
    }
    int rating( void ) { return m_Rating; }
private:
    int m_Rating;
};
#endif // CPLUSPLUSCLASS_H
