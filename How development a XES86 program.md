# How Can development a XES86 program?

## First , You will need a good code editor.

Sometimes [notepad++](https://notepad-plus-plus.org/downloads/) or [VSCode](https://code.visualstudio.com/) is your best choose.

## Second , You will add a file , type is xexep .

## Third , Open the file now.

### Than , How I can write a XES86 program ?

You need in the file header write some induce , You can Reference the list.

Just like : #induce [mod name]

##                                                      Primary mods

| Name            | Function                              | Remark                                   |
| --------------- | ------------------------------------- | ---------------------------------------- |
| xdw-2d          | Display 2D window                     | Can Combination matching xdw-3d          |
| xdw-3d          | Display 3D window                     | Can Combination matching xdw-2d          |
| window-program  | Declare the code as a window program  | Can Combination matching command-program |
| command-program | Declare the code as a command program | Can Combination matching window-program  |
| video           | In the window display a video         | No                                       |
| audio           | In the window play a music            | No                                       |



### And , you need add load mod command.

```
start_the_progeram
load_display_drivceses
all_load_end
```

Generally speaking, you only need to add the above paragraph to complete the initialization.



### Then, define a window, which should look like this:

```
new-window(type=default){ //Define a new window of a general type
     max-width=zedone; //Define the width. When set to zedone, you can manually drag it
     max-height=zedone; //Define the height. When set to zedone, you can manually drag it
     min-width=300pixels; //Define the minimum width. Below this width, it cannot be reduced.
     min-height=500pixels; //Define the minimum height. Below this width, it cannot be reduced.
     manywindows=yes; //Whether it can be enlarged
     canmin=yes; //Whether it can be minimized
     canmax=yes; //can be maximized
     canoff=yes; //can be closed
}
```



### And, you need to choose what content to display at the top, bottom, left, and right of the window.

```
new-window:left(left=150pixels){ //Define the display content of 150 pixels from left to right}
```

## Before defining any element, you need to add the declaration: #midendos comtions

## Make a new option.

```
new-option(name=home){ //Add a new option named home
    $origens-to-right(); //Set it to right alignment
}
```
## Display text in the option.
```
new-option(name=Safe-and-update){ //Add an option named Safe-and-update
 text(font=default;size=30pixels;type=title;text="Safe & Update";code=utf-8;); 
 //Display text, default font, size 30 pixels, type is title, and the displayed text is Safe & Update, encoded as Utf-8
 text(font=default;size=20pixels;type=title;text="Keep your computer softwares are newest and you computer safely.";code=utf-8;);
 //Display text, font default, size 20 pixels, The type is title, the displayed text is Keep your computer softwares are newest and you computer safely, and the encoding is Utf-8
 }
```

### However, if you don't need the default style and want to customize a style, you can follow the following code:

```
style(){ //Define style (global)
#proments advanced. //Declaration
#background(color=white;); //Define the background color to be white
     generally($new-option){ //Option default style
            frame(size=20pixels;edge=round;edge-pixels=15pixels;color=black;); 
            //Window: size 20 pixels, rounded corners, 15 pixels rounded corners, black border
      }
      hover($new-option){
            frame(size=20pixels;edge=round;edge-pixels=15pixels;color=black;shadow=center;);
            //Window: size 20 pixels, rounded corners, 15 pixels rounded corners, black border, focus to middle shadow , color black
      }
      selected($new-option){
            frame(size=20pixels;edge=round;edge-pixels=15pixels;color=black;shadow=no;shadow-color=skyblue;);
            //Window: size 20 pixels, rounded corners, 15 pixels rounded corners, black border , focus on the middle shadow, color sky blue
       }
```

```
pressed(element=[option name]){
//What happens when the element is pressed
//——Customizable code——
//like this:
popup(windowbuttontype=1;title="popup";){
//Pop up a window with an OK button, titled: Pop-up window
text(font=default;size=30pixels;type=title;text="Pop up";code=utf-8;);
  //Display text, default font, size 30 pixels, type is title, and the displayed text is Pop up, encoded as Utf-8
//If no other definitions are added, the next piece of code will be executed after pressing OK
}
```

### After writing the complete code.

```
>>END_OF_FILE.
//Adding this section indicates the end of the code, and elements after this will not be executed.
```

# The Passage is end.
