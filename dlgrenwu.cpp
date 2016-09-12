#include "dlgrenwu.h"
#include "ui_dlgrenwu.h"

DlgRenwu::DlgRenwu(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::DlgRenwu)
{
    ui->setupUi(this);
}

DlgRenwu::~DlgRenwu()
{
    delete ui;
}

#include "dlgbiji.h"
void DlgRenwu::on_pushButton_clicked()
{
    DlgBiji *dlg = new DlgBiji();
    dlg->show();
}
