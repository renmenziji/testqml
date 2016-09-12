#include "dlgbiji.h"
#include "ui_dlgbiji.h"

DlgBiji::DlgBiji(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::DlgBiji)
{
    ui->setupUi(this);
}

DlgBiji::~DlgBiji()
{
    delete ui;
}

void DlgBiji::on_pushButton_clicked()
{
    close();
}
