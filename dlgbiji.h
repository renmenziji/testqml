#ifndef DLGBIJI_H
#define DLGBIJI_H

#include <QWidget>

namespace Ui {
class DlgBiji;
}

class DlgBiji : public QWidget
{
    Q_OBJECT

public:
    explicit DlgBiji(QWidget *parent = 0);
    ~DlgBiji();

private slots:
    void on_pushButton_clicked();

private:
    Ui::DlgBiji *ui;
};

#endif // DLGBIJI_H
