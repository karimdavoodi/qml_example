#include "text_read.h"
#include <QDebug>
#include <QFile>

void Text_read::read_file()
{
    last_line = 0;
    QFile file(file_name);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)){
        qDebug() << "Can't open file: " << file_name;
        return;
    }
    while (!file.atEnd()) {
           file_lines.push_back(QString(file.readLine()));
    }
    qDebug() << "Number of line(words) in file" << file_lines.size();

    // Init 'rand' function
    srand(time(NULL));
}

QString Text_read::next_text()
{
    if(file_lines.empty()){
        qDebug() << "File is empty: " << file_name;
        return "";
    }
    // try to select new random line from list
    int ret_line = 0;
    while((ret_line = (rand() % file_lines.size())) == last_line);
    last_line = ret_line;
    QString word = file_lines[ret_line].trimmed();
    qDebug() << "Return line " << ret_line << " word: " << word;
    return word;
}
