#ifndef DLGRENWU_H
#define DLGRENWU_H

#include <QWidget>

namespace Ui {
class DlgRenwu;
}

class DlgRenwu : public QWidget
{
    Q_OBJECT

public:
    explicit DlgRenwu(QWidget *parent = 0);
    ~DlgRenwu();

private slots:
    void on_pushButton_clicked();

private:
    Ui::DlgRenwu *ui;
};

#endif // DLGRENWU_H
