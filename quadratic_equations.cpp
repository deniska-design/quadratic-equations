#include <FL/Fl.H>
#include"FL/Fl_Window.H"
#include"FL/Fl_Box.H"
#include"FL/Fl_Button.H"
#include"FL/Fl_Widget.H"
#include"FL/Fl_Input.H"
#include"FL/Fl_Float_Input.H"
#include <cmath>
#include <unistd.h>
#include <stdlib.h>

enum{
    x = 400,            //росположение по горизонати
    y = 300,            //росположение по вертикали
    size_x = 300,       //ширина кнопки
    size_y = 100,       //высота кнопки
    space = 200,          //промежутки

    text_y = 20,        //росположение по вертикали поля для ввода
    text_w = 300,       //ширина
    text_h = 40,        //высота
    label_w = 50,      //ширина метки

    a = 0,              //коффециенты типо что бы приколько выглядило
    b = 1,              //ну типо coefficient[a] и тип сразу понятно
    c = 2               //пон?
};

Fl_Window *win = new Fl_Window(1200, 550, "quadratic equations");
Fl_Box *root_1 = new Fl_Box(label_w + space + space, text_y + text_h, text_w, text_h, "");
Fl_Box *root_2 = new Fl_Box(label_w + space + space + space , text_y + text_h, text_w, text_h, "");
int counter = 0;

int array_length(char array[]){
    int length;
    for(int i= 0; array[i] != '\0'; i++) {length = i;}
    return length;
}


void calculation_callback(Fl_Widget *w, void *user){
    char *root_buf1 = new(char);
    char *root_buf2 = new(char);
    float x1, x2;
    float coefficient[3];
    Fl_Input** buffer = (Fl_Input**)user;
    coefficient[a] = atof(buffer[a]->value());
    printf("a: %f\n", coefficient[a]);
    coefficient[b] = atof(buffer[b]->value());
    printf("b: %f\n", coefficient[b]);
    coefficient[c] = atof(buffer[c]->value());
    printf("c: %f\n", coefficient[c]);
    int D = ((coefficient[b])* (coefficient[b]) - (4 * (coefficient[a]) * (coefficient[c])));
    printf("D = %d\n", D);
    if(D < 0){
        printf("корнів немає!\n");
    }
    else if(D == 0){
        x1 = -(coefficient[b]) / (2 * (coefficient[a]));
        printf("%f\n", x1);
    } 
    else if(D > 0){
        x1 = ( -(coefficient[b]) + sqrt(D) ) / (2 * (coefficient[a]));
        x2 =  ( -(coefficient[b]) - sqrt(D) ) / (2 * (coefficient[a]));
        sprintf(root_buf2, "%d", (int)x2);
        root_2->label(root_buf2);
        printf("x = %f, %f\n", x1, x2);
    }
    sprintf(root_buf1, "%d", (int)x1); 
    root_1->label(root_buf1);
}

void exit_callback(Fl_Widget *, void *){
    exit(0);
}

int main(){
    const char *text[] = {
        "calculate", "Quit"
    };
    Fl_Box *label = new Fl_Box(label_w + space, text_y + text_h, text_w, text_h, "x:");
    Fl_Button *butt[2];
    int button_w = x;
    for (int i = 0; i < 2; i++){
        butt[i] = new Fl_Button(button_w, y, size_x, size_y, text[i]);
        butt[i]->labelsize(20);
        button_w += size_x; 
    }
    Fl_Input *coefficient[3];
    coefficient[a] = new Fl_Input(label_w, text_y, text_w, text_h, "a:");
    coefficient[b] = new Fl_Input(label_w, text_y + text_h, text_w, text_h, "b:");
    coefficient[c] = new Fl_Input(label_w, text_y + text_h*2, text_w, text_h, "c:");
    butt[0]->callback(calculation_callback, (void*)coefficient);
    butt[1]->callback(exit_callback, 0);
    win->end();
    win->show();
    return Fl::run();
}
