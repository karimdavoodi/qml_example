#ifndef TEXT_READ_H
#define TEXT_READ_H
#include <QObject>
#include <QString>
#include <iostream>
#include <vector>

class Text_read : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString file_name READ get_file_name WRITE set_file_name )
public:
    void read_file();
    Q_INVOKABLE QString next_text();
    QString get_file_name() const { return file_name; }
    void set_file_name(QString name) {file_name = name;  read_file(); }
    virtual ~Text_read() {}
private:
    QString file_name;      // text file path
    int last_line;          // save last selected line
    std::vector<QString> file_lines; // contents of file
};

#endif // TEXT_READ_H
