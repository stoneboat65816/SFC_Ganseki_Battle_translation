==============Mục lục/目次/TABLE OF CONTENTS============

A. Tiếng Việt
	I. Khái quát
	II. Cấu trúc
	III. Cách compile
	IV. Tính năng phụ trợ
	
B. English
	I. Overview
	II. Structure
	III. How to Compile
	IV. Additional Features

########################   A. Tiếng Việt   ###################################
I. Khái quát
Đây là mã nguồn cho bản dịch đa ngôn ngữ cho trò chơi điện tử "Dossun! Ganseki Batoru" （どっすん!岩石バトル）do hãng I'MAX phát hành cho máy chơi game Nintendō Super Famicom vào năm 1994.
Ở bản dịch này, người chơi có thể lựa chọn một trong các ngôn ngữ sau:
1) Tiếng Nhật (bản gốc)
2) Tiếng Việt (bản dịch)
3) Tiếng Anh (bản dịch)

Với mã nguồn này, bạn có thể tự compile Rom gốc (tiếng Nhật) thành Rom có bản dịch chỉ với một cú click chuột.
Ngoài ra, folder mã nguồn cũng đi kèm với sách hướng dẫn từ nhà sản xuất, giúp bạn hiểu rõ hơn về luật chơi.

II. Cấu trúc
Folder mã nguồn này gồm những thành phần như bên dưới, không tính file Readme này.

1. Dump_Ganseki: folder chứa phần mềm trích xuất code và text của Rom gốc để phục vụ cho quá trình dịch thuật/lập trình bản dịch này.
2. Font: folder chứa dữ liệu font chữ được dùng trong bản dịch này.
3. GFX: folder chứa dữ liệu hình ảnh được dùng trong bản dịch này.
4. Sách hướng dẫn-取説-Manual: folder chứa sách hướng dẫn của nhà sản xuất, gồm bản gốc (tiếng Nhật) và bản dịch (tiếng Việt).
5. Screenshot: folder chứa một số ảnh chụp màn hình của bản dịch.
6. Text: folder chứa file text của bản dịch. Bạn có thể thay đổi lời thoại, dịch lại theo ý thích của mình bằng cách chỉnh sửa file text trong này.
7. Các file có phần mở rộng "asm": phần code/linh hồn của bản dịch, được viết bằng ngôn ngữ WDC65816. 
Mở những file này bằng Notepad hoặc bất cứ Text-editor nào.Bạn có thể sửa đổi phần code này để tạo thêm những chức năng khác vốn không có trong bản dịch.
* Nếu không có kiến thức về phần cứng/phần mềm của Super Famicom thì đừng động vào đây.
8. File "xkas.exe": phần mềm của tác giả Byuu cho phép biến code WDC65816 thành mã máy mà Super Famicom hiểu được.
9. File "run.bat": file liên kết xkas với phần code để compile bản dịch.


III. Cách compile

1. Mở file "Run.bat" trong folder chính bằng phần mềm Notepad hoặc bất kỳ Text editor nào.
Trong này bạn sẽ thấy những dòng lệnh như bên dưới.

=============Code===============
copy Dossun.smc translation.smc
xkas -o translation.smc main.asm
pause
================================

2. Đặt Rom gốc (tiếng Nhật) của trò "Dossun! Ganseki Batoru" vào folder chính.
Bạn có thể dùng công cụ Rom-extractor như Super UFO để trích xuất Rom từ băng gốc hợp pháp của mình.

3. Đổi tên Rom gốc của bạn thành "Dossun.smc" hoặc bất cứ tên nào cũng được.
Nếu tên Rom gốc của bạn khác với "Dossun.smc" thì cần phải sửa lại tên khai báo ở file "Run.bat" như mô tả ở bước 1.

4. Double-click vào file "Run.bat". Lúc này xkas sẽ tạo ta file "translation.smc" (hoặc bất kỳ tên gì, ứng với tên được khai báo ở bước 1).

5. Chạy file "translation.smc" vừa được tạo ra bằng các phần mềm giả lập Super Famicom như BSNES, MESEN, SNES9X,...
Bạn cũng có thể chơi bản dịch này trên phần cứng Super Famicom thật hoặc những phần cứng clone khác như SupaBoy, Retron,...

IV. Tính năng phụ trợ
Bản dịch này cũng được lập trình thêm một số tính năng mà trong bản gốc (tiếng Nhật) không có.

1) Cho phép lựa chọn ngôn ngữ: Nhật/Việt/Anh.
2) Cho phép lựa chọn artwork cho màn hình tựa đề game.
3) Lựa chọn giữ "danh dự" với "lợi ích". Người chơi tự tìm hiểu tác dụng của nó là gì.
4) Một số tính năng ẩn không được kích hoạt trong điều kiện bình thường vì có thể gây ảnh hưởng tới trải nghiệm chơi.

Những tính năng ở 4) không được tiết lộ một cách chính thức, nhưng bạn hoàn toàn có thể kích hoạt được chúng bằng cách đọc mã nguồn được cung cấp.
Ngoài ra, với mã nguồn đi kèm, bạn có thể chỉnh sửa lời thoại, dịch lại theo ý mình.

Mã nguồn được chia sẻ miễn phí tại:
https://github.com/stoneboat65816/

########################   B. English   ###################################

I. Overview
This is the source code for a multilingual translation of the video game “Dossun! Ganseki Batoru” (どっすん！岩石バトル), published by I'MAX for the Nintendō Super Famicom in 1994.
In this translation, players can choose one of the following languages:
1) Japanese (original)
2) Vietnamese (translation)
3) English (translation)

With this source code, you can compile the original ROM (Japanese) into a translated ROM with just a single click.
In addition, the source folder also includes the original manufacturer’s manual, helping you gain a clearer understanding of the game’s rules and mechanics.

II. Structure
This source folder contains the following components, excluding this README file.

1) Dump_Ganseki: A folder containing tools to extract code and text from the original ROM for use in the translation and programming process.
2) Font: A folder containing the font data used in this translation.
3) GFX: A folder containing the graphic assets used in this translation.
4) Sách hướng dẫn-取説-Manual: A folder containing the manufacturer’s manual, including both the original version (Japanese) and the translated version (Vietnamese).
5) Screenshot: A folder containing several screenshots of the translation.
6) Text: A folder containing the text files for the translation. You can modify the dialogue or re-translate the content by editing the text files in this folder.
7) Files with the “.asm” extension: The core code—the “soul” of the translation—written in the WDC65816 assembly language.
Open these files with Notepad or any text editor. You can modify this code to add new features that do not exist in the current translation.
If you do not have knowledge of Super Famicom hardware/software, do not modify these files.
8) xkas.exe: A tool by Byuu that converts WDC65816 assembly code into machine code that the Super Famicom can understand.
9) run.bat: A batch file that links xkas with the code to compile the translation.

III. How to Compile

1) Open the file “Run.bat” in the main folder using Notepad or any text editor.
Inside, you will see command lines like the following:

============= Code =============
copy Dossun.smc translation.smc
xkas -o translation.smc main.asm
pause
================================

2) Place the original ROM (Japanese) of “Dossun! Ganseki Batoru” into the main folder.
You may use a ROM extractor such as Super UFO to legally dump the ROM from your original cartridge.

3) Rename your original ROM to “Dossun.smc”, or any name you prefer.
If the ROM name is different from “Dossun.smc”, you must edit the filename specified in “Run.bat” as described in Step 1.

4) Double-click “Run.bat”.
xkas will then generate a file named “translation.smc” (or any name corresponding to what you specified in Step 1).

5) Run the newly created “translation.smc” using a Super Famicom emulator such as BSNES, MESEN, or SNES9X.
You can also play this translation on real Super Famicom hardware or compatible clone systems such as SupaBoy or Retron.


IV. Additional Features
This translation also includes several features that are not present in the original (Japanese) version:

1) Language selection: Japanese / Vietnamese / English.
2 )Artwork selection for the title screen.
3) A choice between “honor” and “profit.” Players are encouraged to discover its effects on their own.
4) Several hidden features that are not enabled under normal conditions, as they may affect the gameplay experience.

The features listed in 4) are not officially documented, but you can fully enable them by reading and modifying the provided source code.

In addition, with the included source code, you can edit the dialogue and re-translate the content to suit your own preferences.

The source code is shared for free at:
https://github.com/stoneboat65816/