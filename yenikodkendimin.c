unsigned int   i, sayac,j,say,deger;

/////////////////////////////////////////////////
//////             Tablolar              //////
/////////////////////////////////////////////////
const char isim_soyisim[88] = {
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x7f, 0x7f, 0x0e, 0x1c, 0x0e, 0x7f, 0x7f, 0x00, //M
  0x3e, 0x7e, 0x80, 0x80, 0x7e, 0xfe, 0x80, 0x00,  //u
  0x44, 0x7c, 0x78, 0x4c, 0x04, 0x1c, 0x18, 0x00,  //r
  0x20, 0x76, 0x52, 0x52, 0x3c, 0x7c, 0x40, 0x00,  //a
  0x00, 0x04, 0x3e, 0x7f, 0x44, 0x24, 0x00, 0x00,  //t
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x26, 0x6f, 0xcd, 0xd9, 0x73, 0x32, 0x00,  //Þ
  0x00, 0x7f, 0x7f, 0x49, 0x49, 0x49, 0x41, 0x00,  //E
  0x7f, 0x7f, 0x06, 0x0c, 0x18, 0x7f, 0x7f, 0x00,    //N
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                  };

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

char animasyon[56]={
 0xff, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0xff,
 0xff, 0xff, 0xc3, 0xc3, 0xc3, 0xc3, 0xff, 0xff,
 0xff, 0xff, 0xff, 0xe7, 0xe7, 0xff, 0xff, 0xff,
 0xff, 0xff, 0xff,0xff, 0xff, 0xff,0xff, 0xff,
 0xff, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0xff,
 0xff, 0xff, 0xff, 0xe7, 0xe7, 0xff, 0xff, 0xff,
 0xff, 0xff, 0xc3, 0xc3, 0xc3, 0xc3, 0xff, 0xff

  };
 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  const char animasyon_2[48]={
  0x7e, 0x81, 0xa5, 0x99, 0x81, 0xa5, 0x81, 0x7e,
  0x7e, 0x81, 0xbd, 0x81, 0x81, 0xa5, 0x81, 0x7e,
  0x7e, 0x81, 0x99, 0xa5, 0x81, 0xa5, 0x81, 0x7e,
  0x7e, 0x81, 0x99, 0xa5, 0x81, 0xa1, 0x81, 0x7e,
  0x7e, 0x81, 0x99, 0xa5, 0x81, 0xa5, 0x81, 0x7e,
  0x7e, 0x99, 0xa5, 0x99, 0x81, 0xa5, 0x81, 0x7e,

  };
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 const char animasyon_3[72]=
 {
 0x00, 0xff, 0x81, 0x80, 0x80, 0x81, 0xff, 0x00,
  0x00, 0xff, 0x81, 0x80, 0x80, 0x81, 0xff, 0x00,
  0x00, 0xff, 0xc1, 0xc0, 0xc0, 0xc1, 0xff, 0x00,
  0x00, 0xff, 0xe1, 0xe0, 0xe0, 0xe1, 0xff, 0x00,
  0x00, 0xff, 0xf1, 0xf0, 0xf0, 0xf1, 0xff, 0x00,
  0x00, 0xff, 0xf9, 0xf8, 0xf8, 0xf9, 0xff, 0x00,
  0x00, 0xff, 0xfd, 0xfc, 0xfc, 0xfd, 0xff, 0x00,
  0x00, 0xff, 0xff, 0xfe, 0xfe, 0xff, 0xff, 0x00,
  0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00,


  };
 ///////////////////////////////////////////////////////////////////////////////////////////////
const char animasyon_5[168]=
{
  0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0xff, 0x80, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00,
  0xff, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80,
  0xff, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0xf0,
  0xff, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0xff,
  0xff, 0x80, 0x80, 0x80, 0x81, 0x81, 0x81, 0xff,
  0xff, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0xff,
  0xff, 0x8f, 0x81, 0x81, 0x81, 0x81, 0x81, 0xff,
  0xff, 0xff, 0x81, 0x81, 0x81, 0x81, 0x81, 0xff,
  0xff, 0xff, 0xc1, 0xc1, 0xc1, 0x81, 0x81, 0xff,
  0xff, 0xff, 0xc1, 0xc1, 0xc1, 0xc1, 0xc1, 0xff,
  0xff, 0xff, 0xc1, 0xc1, 0xc1, 0xc1, 0xf9, 0xff,
  0xff, 0xff, 0xc1, 0xc1, 0xc1, 0xc1, 0xff, 0xff,
  0xff, 0xff, 0xc1, 0xc3, 0xc3, 0xc3, 0xff, 0xff,
  0xff, 0xff, 0xcf, 0xc3, 0xc3, 0xc3, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xe3, 0xc3, 0xc3, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xe3, 0xe3, 0xf3, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xe3, 0xe7, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xef, 0xe7, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff,0xff, 0xff, 0xff,  0xff, 0xff,





};
////////////////////////////////////////////////////////////////////////
 const char animasyon_6[40]=
{ 0xff, 0x42, 0x24, 0x24, 0x24, 0x24, 0x42, 0xff,
  0x81, 0xc3, 0xfd, 0xf9, 0xf9, 0xfd, 0xc3, 0x81,
  0xff, 0x7e, 0x3c, 0x3c, 0x3c, 0x24, 0x42, 0xff,
  0x81, 0xc3, 0xbf, 0x9f, 0x9f, 0xbf, 0xc3, 0x81,
  0xff, 0x42, 0x24, 0x3c, 0x3c, 0x3c, 0x7e, 0xff,


 };
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
const char animasyon_7[240]=
   /////////////  saat animasyonu //////////
{ 0x00, 0X00, 0X00, 0X18, 0X18, 0X04, 0X02, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X08, 0X04, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X08, 0X08, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X08, 0X10, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X10, 0X10, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X10, 0X20, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X20, 0X40, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X38, 0X40, 0X00, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X78, 0X00, 0X00, 0X00,
  0x00, 0X00, 0X00, 0X58, 0X38, 0X00, 0X00, 0X00,
  0x00, 0X00, 0X00, 0X78, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X00, 0X40, 0X38, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X40, 0X20, 0X18, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X20, 0X10, 0X18, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X10, 0X10, 0X18, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X08, 0X10, 0X18, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X08, 0X08, 0X18, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X04, 0X08, 0X18, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X02, 0X04, 0X18, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X00, 0X02, 0X1c, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X00, 0X00, 0X1e, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X00, 0X00, 0X1c, 0X1a, 0X00, 0X00, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X1e, 0X00, 0X00, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X1c, 0X02, 0X00, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X04, 0X02, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X08, 0X04, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X08, 0X08, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X08, 0X10, 0X00,
  0x00, 0X00, 0X00, 0X18, 0X18, 0X10, 0X10, 0X00,
 };  /////////////////////////////////////////////////////////////////////////////////////////////////////////

 ////////////////////////////////////////////////////////////////////////////////////
  const char animasyon_8[184]=
{   
  0x70, 0X00, 0X00, 0X00, 0X00, 0X00, 0X02, 0X00,
  0x1c, 0X00, 0X00, 0X00, 0X00, 0X00, 0X02, 0X00,
  0x0e, 0X00, 0X00, 0X00, 0X00, 0X00, 0X02, 0X00,
  0x06, 0X02, 0X00, 0X00, 0X00, 0X00, 0X02, 0X00,
  0x02, 0X02, 0X02, 0X00, 0X00, 0X00, 0X02, 0X00,
  0x00, 0X00, 0X02, 0X02, 0X02, 0X00, 0X02, 0X00,
  0x00, 0X00, 0X00, 0X02, 0X02, 0X02, 0X02, 0X00,
  0x00, 0X00, 0X00, 0X02, 0X02, 0X22, 0X02, 0X00,
  0x00, 0X00, 0X00, 0X00, 0X02, 0X22, 0X06, 0X00,
  0x00, 0X00, 0X00, 0X00, 0X00, 0X22, 0X0e, 0X00,
  0x00, 0X00, 0X00, 0X00, 0X00, 0X20, 0X1e, 0X00,
  0x00, 0X00, 0X00, 0X00, 0X00, 0X20, 0X3c, 0X00,
  0x00, 0X00, 0X00, 0X00, 0X20, 0X20, 0X38, 0X00,
  0x01, 0X00, 0X00, 0X00, 0X20, 0X20, 0X38, 0X00,
  0x01, 0X00, 0X20, 0X20, 0X20, 0X20, 0X00, 0X00,
  0x21, 0X20, 0X20, 0X20, 0X00, 0X00, 0X00, 0X00,
  0x39, 0X20, 0X00, 0X00, 0X00, 0X00, 0X00, 0X00,
  0x1f, 0X00, 0X00, 0X00, 0X00, 0X00, 0X00, 0X00,
  0x07, 0X03, 0X00, 0X00, 0X40, 0X00, 0X00, 0X00,
  0x01, 0X0f, 0X00, 0X00, 0X40, 0X00, 0X00, 0X00,
  0x00, 0X3e, 0X00, 0X00, 0X40, 0X00, 0X00, 0X00,
  0x00, 0X78, 0X40, 0X00, 0X40, 0X00, 0X00, 0X00,
  0x00, 0X70, 0X40, 0X40, 0X40, 0X00, 0X00, 0X00


 };
 /////////////////////////////////////////////////////////////////////////////////////////////////////////////
     const char animasyon_9[200]=
{ 
  0x81, 0x81, 0x81, 0xc3, 0xc1, 0x81, 0x81, 0x81,
  0x81, 0x81, 0x81, 0xc9, 0xc1, 0x81, 0x81, 0x81,
  0x81, 0x81, 0x81, 0xd1, 0xc1, 0x81, 0x81, 0x81,
  0x81, 0x81, 0x81, 0xe1, 0xc1, 0x81, 0x81, 0x81,
  0x81, 0x81, 0x81, 0xc1, 0xd1, 0x81, 0x81, 0x81,
  0x81, 0x81, 0x81, 0xc1, 0xc1, 0x89, 0x81, 0x81,
  0x81, 0x81, 0x81, 0xc1, 0xc1, 0x81, 0x85, 0x81,
  0x81, 0x81, 0x81, 0xc1, 0xc1, 0x81, 0x81, 0x83,
  0x81, 0x81, 0x81, 0xc1, 0xc1, 0x85, 0x81, 0x81,
  0x81, 0x81, 0x81, 0xc1, 0xc9, 0x81, 0x81, 0x81,
  0x81, 0xc1, 0xc1, 0x91, 0x81, 0x81, 0x81, 0x81,
  0x81, 0xc1, 0xe1, 0x81, 0x81, 0x81, 0x81, 0x81,
  0x81, 0xd1, 0xc1, 0x81, 0x81, 0x81, 0x81, 0x81,
  0x89, 0xc1, 0xc1, 0x81, 0x81, 0x81, 0x81, 0x81,
  0x81, 0xc5, 0xc1, 0x81, 0x81, 0x81, 0x81, 0x81,
  0x81, 0xc1, 0xc3, 0x81, 0x81, 0x81, 0x81, 0x81,
  0x81, 0xc1, 0xc1, 0x83, 0x81, 0x81, 0x81, 0x81,
  0x81, 0x81, 0xc1, 0xc1, 0x85, 0x81, 0x81, 0x81,
  0x81, 0x81, 0x81, 0xc1, 0xc1, 0x89, 0x81, 0x81,
  0x81, 0x81, 0x81, 0x81, 0x81, 0xc1, 0xd1, 0x81,
  0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0xe1, 0xc1,
  0x81, 0x81, 0x81, 0x81, 0x81, 0x91, 0xc1, 0xc1,
  0x81, 0x81, 0x81, 0x85, 0x81, 0x81, 0xc1, 0xc1,
  0x81, 0x81, 0x81, 0x85, 0x81, 0x81, 0xc1, 0xc1,
  0x81, 0x81, 0x83, 0x81, 0x81, 0x81, 0xc1, 0xc1

 };
////////////////////////////////////////////////////////////////////////
 const int animasyon_10[384]=
 /////////////////////////////tetris oyunu///////////////////////////////
{
 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x04, 0x04, 0x04, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x04,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10,
  0x00, 0x00, 0x00, 0x03, 0x01, 0x81, 0x80, 0x80,
  0x00, 0x00, 0x00, 0x0c, 0x04, 0x84, 0x80, 0x80,
  0x00, 0x00, 0x00, 0x00, 0x0c, 0x84, 0x84, 0x80,
  0x00, 0x00, 0x00, 0x00, 0x30, 0x90, 0x90, 0x80,
  0x00, 0x00, 0x00, 0x00, 0xc0, 0xc0, 0xc0, 0x80,
  0x00, 0x00, 0x00, 0x03, 0xc3, 0xc0, 0xc0, 0x80,
  0x00, 0x00, 0x00, 0x0c, 0xcc, 0xc0, 0xc0, 0x80,
  0x00, 0x00, 0x30, 0x30, 0xc0, 0xc0, 0xc0, 0x80,
  0x00, 0x00, 0xc0, 0xc0, 0xc0, 0xc0, 0xc0, 0x80,
  0x00, 0x00, 0xc2, 0xc3, 0xc1, 0xc0, 0xc0, 0x80,
  0x00, 0x00, 0xc4, 0xc6, 0xc2, 0xc0, 0xc0, 0x80,
  0x00, 0x00, 0xc0, 0xc6, 0xcc, 0xc0, 0xc0, 0x80,
  0x00, 0x00, 0xc0, 0xc0, 0xc0, 0xc6, 0xcc, 0x80,
  0x00, 0x00, 0xc0, 0xc0, 0xc0, 0xc0, 0xc6, 0x8c,
  0x00, 0x00, 0xc0, 0xc0, 0xc0, 0xc0, 0xd8, 0xb0,
  0x00, 0x00, 0xc0, 0xc2, 0xc2, 0xc3, 0xf0, 0xe0,
  0x00, 0x00, 0xc0, 0xc8, 0xc8, 0xcc, 0xf0, 0xe0,
  0x00, 0x00, 0xc0, 0xe0, 0xe0, 0xf0, 0xf0, 0xe0,
  0x00, 0x00, 0xc1, 0xe1, 0xe1, 0xf0, 0xf0, 0xe0,
  0x00, 0x00, 0xc2, 0xe2, 0xe2, 0xf0, 0xf0, 0xe0,
  0x00, 0x00, 0xc0, 0xee, 0xe0, 0xf0, 0xf0, 0xe0,
  0x00, 0x0e, 0xc0, 0xe0, 0xe0, 0xf0, 0xf0, 0xe0,
  0x1c, 0x00, 0xc0, 0xe0, 0xe0, 0xf0, 0xf0, 0xe0,
  0xe0, 0x00, 0xc0, 0xe0, 0xe0, 0xf0, 0xf0, 0xe0,
  0xe0, 0x00, 0xc1, 0xe1, 0xe3, 0xf0, 0xf0, 0xe0,
  0xe0, 0x00, 0xc2, 0xe2, 0xe6, 0xf0, 0xf0, 0xe0,
  0xe0, 0x00, 0xc0, 0xee, 0xe2, 0xf0, 0xf0, 0xe0,
  0xe0, 0x1c, 0xc4, 0xe0, 0xe0, 0xf0, 0xf0, 0xe0,
  0xe0, 0x70, 0xd0, 0xe0, 0xe0, 0xf0, 0xf0, 0xe0,
  0xe0, 0xe0, 0xe0, 0xe0, 0xe0, 0xf0, 0xf0, 0xe0,
  0xe0, 0xe0, 0xe0, 0xe0, 0xe3, 0xf6, 0xf0, 0xe0,
  0xe0, 0xe0, 0xe0, 0xe0, 0xe4, 0xf6, 0xf2, 0xe0,
  0xe0, 0xe0, 0xe0, 0xe4, 0xe6, 0xf2, 0xf0, 0xe0,
  0xe0, 0xe0, 0xe0, 0xf0, 0xf0, 0xf8, 0xf8, 0xe0,
  0xe0, 0xe0, 0xe0, 0xf2, 0xf2, 0xfb, 0xf8, 0xe0,
  0xe0, 0xe0, 0xe0, 0xf0, 0xf1, 0xff, 0xf8, 0xe0,
  0xe0, 0xe0, 0xe0, 0xf0, 0xf0, 0xf8, 0xfa, 0xee,
  0xe0, 0xe0, 0xe0, 0xf0, 0xf0, 0xf8, 0xfc, 0xfc,
  0xe0, 0xe0, 0xe0, 0xf0, 0xf3, 0xfb, 0xfc, 0xfc,
  0xe0, 0xe0, 0xe0, 0xf6, 0xf6, 0xf8, 0xfc, 0xfc,
  0xe0, 0xe0, 0xe0, 0xfc, 0xfc, 0xf8, 0xfc, 0xfc,
  0xe0, 0xe0, 0xe0, 0xfd, 0xff, 0xf9, 0xfc, 0xfc,
  0xe0, 0xe0, 0xe0, 0xfc, 0xfd, 0xfb, 0xfd, 0xfc,
  0xe0, 0xe0, 0xe0, 0xfd, 0xff, 0xff, 0xfe, 0xfc
 };
 
  ////////////////////////////////////////////////////////////////////////
 const char animasyon_11[128]=
 ///////////////////////// üçgen hareket////////
{  

 0x81, 0X42, 0X81, 0X00, 0X00, 0X81, 0X42, 0X81,
  0x7e, 0Xbd, 0X7e, 0Xff, 0Xff, 0X7e, 0Xbd, 0X7e,
  0x42, 0X24, 0X42, 0X00, 0X00, 0X42, 0X24, 0X42,
  0xbd, 0Xdb, 0Xbd, 0Xff, 0Xff, 0Xbd, 0Xdb, 0Xbd,
  0x24, 0X18, 0X24, 0X00, 0X00, 0X24, 0X18, 0X24,
  0xdb, 0Xe7, 0Xdb, 0Xff, 0Xff, 0Xdb, 0Xe7, 0Xdb,
  0x24, 0X18, 0X24, 0X18, 0X18, 0X24, 0X18, 0X24,
  0xdb, 0Xe7, 0Xdb, 0Xe7, 0Xe7, 0Xdb, 0Xe7, 0Xdb,
  0x42, 0Xc3, 0X00, 0X00, 0X00, 0X00, 0Xc3, 0X42,
  0xbd, 0X3c, 0Xff, 0Xff, 0Xff, 0Xff, 0X3c, 0Xbd,
  0x00, 0X24, 0X66, 0X00, 0X00, 0X66, 0X24, 0X00,
  0xff, 0Xdb, 0X99, 0Xff, 0Xff, 0X99, 0Xdb, 0Xff,
  0x00, 0X00, 0X18, 0X3c, 0X3c, 0X18, 0X00, 0X00,
  0xff, 0Xff, 0Xe7, 0Xc3, 0Xc3, 0Xe7, 0Xff, 0Xff,
  0x81, 0X42, 0X3c, 0X3c, 0X3c, 0X3c, 0X42, 0X81,
  0x7e, 0Xbd, 0Xc3, 0Xc3, 0Xc3, 0Xc3, 0Xbd, 0X7e
 };
 ////////////////////////////////////////////////////////////////////////
 const char animasyon_12[128]=
 ///////////////ani hareketler  ////////
{  
0xff, 0Xff, 0Xff, 0Xe7, 0Xe7, 0Xff, 0Xff, 0Xff,
  0xff, 0Xff, 0Xff, 0Xe7, 0Xe7, 0Xdf, 0Xff, 0Xff,
  0xff, 0Xff, 0Xdf, 0Xe7, 0Xe7, 0Xdf, 0Xff, 0Xff,
  0xff, 0Xff, 0Xdb, 0Xe7, 0Xe7, 0Xdf, 0Xff, 0Xff,
  0xff, 0Xff, 0Xdb, 0Xe7, 0Xe7, 0Xdb, 0Xff, 0Xff,
  0xff, 0Xff, 0Xdb, 0Xe7, 0Xe7, 0Xdb, 0Xbf, 0Xff,
  0xff, 0Xbf, 0Xdb, 0Xe7, 0Xe7, 0Xdb, 0Xbf, 0Xff,
  0xff, 0Xbd, 0Xdb, 0Xe7, 0Xe7, 0Xdb, 0Xbf, 0Xff,
  0xff, 0Xbd, 0Xdb, 0Xe7, 0Xe7, 0Xdb, 0Xbd, 0Xff,
  0xff, 0Xbd, 0Xc3, 0Xc3, 0Xc3, 0Xc3, 0Xbd, 0Xff,
  0xff, 0Xbd, 0Xc3, 0Xc3, 0Xc3, 0Xc3, 0Xbd, 0X7f,
  0x7f, 0Xbd, 0Xc3, 0Xc3, 0Xc3, 0Xc3, 0Xbd, 0X7f,
  0x7e, 0Xbd, 0Xc3, 0Xc3, 0Xc3, 0Xc3, 0Xbd, 0X7f,
  0x7e, 0Xbd, 0Xc3, 0Xc3, 0Xc3, 0Xc3, 0Xbd, 0X7e,
  0x42, 0Xbd, 0X42, 0X42, 0X42, 0X42, 0Xbd, 0X42,
  0xbd, 0X42, 0Xbd, 0Xbd, 0Xbd, 0Xbd, 0X42, 0Xbd


 };
 ////////////////////////////////////////////////////////////////////////
 const char animasyon_13[240]=
////////////////////labirent/////////////
{
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X41,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X44,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X48,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X60,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X36, 0X40,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X96, 0X40,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0Xc4, 0X16, 0X40,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X96, 0X40,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X36, 0X40,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X64, 0X16, 0X40,
  0x29, 0X04, 0X55, 0X8c, 0Xa9, 0X54, 0X16, 0X40,
  0x29, 0X04, 0X55, 0X9c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X04, 0X55, 0Xac, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X04, 0X55, 0Xcc, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X04, 0X55, 0X8c, 0Xe9, 0X44, 0X16, 0X40,
  0x29, 0X04, 0X55, 0Xcc, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X04, 0X55, 0Xac, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X24, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X0c, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X04, 0X5d, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X14, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x39, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X14, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X24, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X44, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X84, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X04, 0Xd5, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0x29, 0X84, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40,
  0xa9, 0X04, 0X55, 0X8c, 0Xa9, 0X44, 0X16, 0X40


 };
  ////////////////////////////////////////////////////////////////////////
 const char animasyon_14[64]=
 ///////////////bosluk hareket  ////////
{
  0x55, 0Xaa, 0X55, 0Xaa, 0X55, 0Xaa, 0X55, 0Xaa,
  0xaa, 0X55, 0Xaa, 0X55, 0Xaa, 0X55, 0Xaa, 0X55,
  0xab, 0Xd5, 0Xd5, 0Xab, 0Xd5, 0Xab, 0Xab, 0Xd5,
  0x54, 0X2a, 0X2a, 0X54, 0X2a, 0X54, 0X54, 0X2a,
  0x55, 0Xaa, 0X55, 0Xaa, 0X54, 0X55, 0Xaa, 0X55,
  0xaa, 0X55, 0Xaa, 0X55, 0Xab, 0Xaa, 0X55, 0Xaa,
  0x00, 0X42, 0Xa5, 0X56, 0X00, 0X56, 0Xa5, 0X42,
  0xff, 0Xbd, 0X5a, 0Xa9, 0Xff, 0Xa9, 0X5a, 0Xbd


 };
   ////////////////////////////////////////////////////////////////////////
 const char animasyon_15[32]=
 /////////////// donrn ok isareti ////////
{     
  0x08, 0X08, 0X08, 0X08, 0X08, 0X3e, 0X1c, 0X08,
  0x00, 0X04, 0X06, 0Xff, 0X06, 0X04, 0X00, 0X00,
  0x08, 0X1c, 0X3e, 0X08, 0X08, 0X08, 0X08, 0X08,
  0x00, 0X20, 0X60, 0Xff, 0X60, 0X20, 0X00, 0X00
 };
 ////////////////////////////////////////////////////////////////////////
 const char animasyon_16[96]=
 /////////////// donen ok isareti ////////
{
 0x00, 0X00, 0X00, 0X18, 0X18, 0X00, 0X00, 0X00,
  0x00, 0X00, 0X24, 0X18, 0X18, 0X24, 0X00, 0X00,
  0x00, 0X42, 0X24, 0X18, 0X18, 0X24, 0X42, 0X00,
  0x81, 0X42, 0X24, 0X18, 0X18, 0X24, 0X42, 0X81,
  0x81, 0X42, 0X3c, 0X3c, 0X3c, 0X3c, 0X42, 0X81,
  0x81, 0X7e, 0X7e, 0X7e, 0X7e, 0X7e, 0X7e, 0X81,
  0xff, 0Xff, 0Xff, 0Xff, 0Xff, 0Xff, 0Xff, 0Xff,
  0x7e, 0X81, 0X81, 0X81, 0X81, 0X81, 0X81, 0X7e,
  0x7e, 0Xbd, 0Xc3, 0Xc3, 0Xc3, 0Xc3, 0Xbd, 0X7e,
  0x7e, 0Xbd, 0Xdb, 0Xe7, 0Xe7, 0Xdb, 0Xbd, 0X7e,
  0xff, 0Xbd, 0Xdb, 0Xe7, 0Xe7, 0Xdb, 0Xbd, 0Xff,
  0xff, 0Xff, 0Xdb, 0Xe7, 0Xe7, 0Xdb, 0Xff, 0Xff
 };

 
 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 char sutun_tablo[8]={0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,};
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////=>fonksiyon  Tanýmlarý <=   ///////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void   matrix_yaz   (void);
void   matrix_yaz2   (void);
void   matrix_yaz3   (void);
void   matrix_yaz4   (void);
void   matrix_yaz5   (void);
void   matrix_yaz6   (void);
void   matrix_yaz7   (void);   // saat animasyon
void   matrix_yaz8   (void);   // yýlan animasyon
void   matrix_yaz9   (void);   //  pinpon oyun
void   matrix_yaz10   (void);   //  tetris oyunu
void   matrix_yaz11   (void);   //   ücgen animasyon
void   matrix_yaz12   (void);   //  ani hareketler
void   matrix_yaz13   (void);   // labirent oyunu
void   matrix_yaz14   (void);   // bosluk hareket
void   matrix_yaz15  (void);   //    donen ok isareti
void   matrix_yaz16   (void);   //  x isareti animasyon

void  tekrar        (void);
void  tekrar_2        (void);
void  tekrar_3        (void);
void  tekrar_4        (void);
void  tekrar_5        (void);
void  tekrar_6        (void);
void  tekrar_7        (void);   // saat animasyon
void  tekrar_8        (void);   // yýlan animasyon
void  tekrar_9        (void);   //  pinpon oyun
void  tekrar_10       (void);   //  tetris oyunu
void  tekrar_11       (void);   //   ücgen animasyon
void  tekrar_12       (void);   //    ani hareketler
void  tekrar_13       (void);   //  labirent oyunu
void  tekrar_14       (void);   //  bosluk hareket
void  tekrar_15       (void);   //   donen ok isareti
void  tekrar_16      (void);   //   x isareti animasyon
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////=>Ana fonksiyon<=/////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void main ()
{  TRISC=1;
   TRISB=0;     //B portu cýkýs olarak ayarlandý.
   TRISD=0;     //D portu cýkýs olarak ayarlandý.
   i=0;        //i degeri 0'a esitlendi.
    deger=0;
      for(sayac=0; sayac<88; sayac++)              // 10 karekterden olusan isim icin döngü
      {
        i=sayac;                                   //sayac i degerine atandý
        tekrar_2();                               //tekrar_2 fonksiyonu calýstýrma
      }

   while(1)
   {

    /////////////////////////////////////////////////////////////////////////////////////////

    if (Button(&PORTC, 0, 1, 1)) {
      deger = deger+1;
    }
    if (deger && Button(&PORTC, 0, 1, 0)) {

    deger = deger;
    }
  delay_ms(20);
    ///////////////////////////////////////////////////////////////////////////////////////////
      switch(deger)
    {
           case 0: PORTD=0;
           break;
      ///////////////////////////////////////////////////////////////////////////////////////////////
       case 1:


        for(sayac=0; sayac<7; sayac++)          // 7 karekterden olusan kare tablosu icin döngü
        {
          i=sayac;                              //sayac i degerine atandý
          tekrar ();                            //tekrar fonksiyonu calýstýrma
         }

      break;
  ///////////////////////////////////////////////////////////////////////////////////////////////
     case 2:

      for(sayac=0; sayac<6; sayac++)             // 6 karekterden olusan kare_2 tablosu icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_3 ();                             //tekrar_3 fonksiyonu calýstýrma
     }
    break;

///////////////////////////////////////////////////////////////////////////////////////////////
      case 3:

          for(sayac=0; sayac<9; sayac++)             // 9 karekterden olusan kare_2 tablosu icin döngü
         {
          i=sayac;                                //sayac i degerine atandý
         tekrar_4 ();                             //tekrar_4 fonksiyonu calýstýrma
          }
        break;
///////////////////////////////////////////////////////////////////////////////////////////////
     case 4:

    for(sayac=0; sayac<21; sayac++)             // 21 karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_5 ();                             //tekrar_5 fonksiyonu calýstýrma
     }
     break;


////////////////////////////////////////////////////////////////////////////////////////
      case 5:

    for(sayac=0; sayac<5; sayac++)             //  karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_6 ();                             //tekrar_6 fonksiyonu calýstýrma
     }
       break;
 /////////////////////////////////////////////////////////////////////////////////////
         case 6:


    for(sayac=0; sayac<30; sayac++)             //  karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_7 ();                             //tekrar_7 fonksiyonu calýstýrma
     }
       break;
     
///////////////////////////////////////////////////////////////////////////////////////////
         case 7:


    for(sayac=0; sayac<23; sayac++)             //  23 karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_8 ();                             //tekrar_8 fonksiyonu calýstýrma
     }
       break;



/////////////////////////////////////////////////////////////////////////////////////////
       case 8:


    for(sayac=0; sayac<25; sayac++)             //  25 karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_9 ();                             //tekrar_9 fonksiyonu calýstýrma
     }
       break;



/////////////////////////////////////////////////////////////////////////////////////////
       case 9:


    for(sayac=0; sayac<48; sayac++)             //   48 karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_10 ();                             //tekrar_10 fonksiyonu calýstýrma
     }
       break;
  /////////////////////////////////////////////////////////////////////////////////////////
       case 10:


    for(sayac=0; sayac<16; sayac++)             //   16 karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_11 ();                             //tekrar_11 fonksiyonu calýstýrma
     }
       break;
/////////////////////////////////////////////////////////////////////////////////////////
       case 11:


    for(sayac=0; sayac<16; sayac++)             //   16 karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_12 ();                             //tekrar_12 fonksiyonu calýstýrma
     }
       break;
/////////////////////////////////////////////////////////////////////////////////////////
       case 12:


    for(sayac=0; sayac<30; sayac++)             //   30 karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_13 ();                             //tekrar_13 fonksiyonu calýstýrma
     }
       break;


  /////////////////////////////////////////////////////////////////////////////////////////
       case 13:


    for(sayac=0; sayac<8; sayac++)             //   8 karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_14 ();                             //tekrar_14 fonksiyonu calýstýrma
     }
       break;

     /////////////////////////////////////////////////////////////////////////////////////////
       case 14:


    for(sayac=0; sayac<4; sayac++)             //   4 karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_15 ();                             //tekrar_15 fonksiyonu calýstýrma
     }
       break;
    /////////////////////////////////////////////////////////////////////////////////////////
       case 15:


    for(sayac=0; sayac<12; sayac++)             //   12 karekterden olusan tablo icin döngü
     {
        i=sayac;                                //sayac i degerine atandý
       tekrar_16 ();                             //tekrar_16 fonksiyonu calýstýrma
     }
       break;




/////////////////////////////////////////////////////////////////////////////////////////
     }
  }
}







////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////Tekrar fonksiyonlarý///////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void tekrar (void)
{
   unsigned int   tekrar_sayisi;        // Gözle görülebilmesi için tekrarlama
   for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
   matrix_yaz();
}
////////////////////////////////////////

void tekrar_2 (void)
{
   unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
   matrix_yaz2 ();
}
////////////////////////////////////////
void tekrar_3 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
   matrix_yaz3 ();
}
/////////////////////////////////////////////////////////
void tekrar_4 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
   matrix_yaz4 ();
}
/////////////////////////////////////////////////////////
void tekrar_5 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
   matrix_yaz5 ();
}
//////////////////////////////////////////////////////////////
 void tekrar_6 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
   matrix_yaz6 ();
}
/////////////////////////////////////////////////////////////////
 void tekrar_7 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
   matrix_yaz7 ();
}
/////////////////////////////////////////////////////////////////////////////
 void tekrar_8 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
   matrix_yaz8 ();
}
/////////////////////////////////////////////////////////////////////////////
 void tekrar_9 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
   matrix_yaz9 ();
}
/////////////////////////////////////////////////////////////////////////////
 void tekrar_10 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
   matrix_yaz10 ();
}
/////////////////////////////////////////////////////////////////////////////
 void tekrar_11 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
   matrix_yaz11 ();
}
/////////////////////////////////////////////////////////////////////////////
 void tekrar_12 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
   matrix_yaz12 ();
}
/////////////////////////////////////////////////////////////////////////////
 void tekrar_13 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
   matrix_yaz13 ();
}
/////////////////////////////////////////////////////////////////////////////
 void tekrar_14 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<30; tekrar_sayisi++)
   matrix_yaz14 ();
}
/////////////////////////////////////////////////////////////////////////////
 void tekrar_15 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
   matrix_yaz15 ();
}
/////////////////////////////////////////////////////////////////////////////
 void tekrar_16 (void)
{
     unsigned int   tekrar_sayisi;
   for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
   matrix_yaz16 ();
}
/////////////////////////////////////////////////
///////// Yazma fonksiyonlarý////////////////////
/////////////////////////////////////////////////

void matrix_yaz (void)
{    for(j=0;j<8;j++ )
     {
        PORTB=animasyon[i*8+j];
        PORTD=sutun_tablo[j];
        delay_us(500);
        PORTD=0;
     }
}
///////////////////////////////////////////////
void matrix_yaz2 (void)
{    for(j=0;j<8;j++ )
   {
      PORTB= isim_soyisim[i+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;

   }
}
////////////////////////////////////////////////
void matrix_yaz3 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_2[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
    }
}
/////////////////////////////////////////////////

void matrix_yaz4 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_3[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
    }
}
/////////////////////////////////////////////////

void matrix_yaz5 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_5[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }

//////////////////////////////////////////////

void matrix_yaz6 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_6[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
 /////////////////////////////////////////////////////
  void matrix_yaz7 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_7[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
    /////////////////////////////////////////////////////
  void matrix_yaz8 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_8[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
  /////////////////////////////////////////////////////
  void matrix_yaz9 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_9[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
     /////////////////////////////////////////////////////
  void matrix_yaz10 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_10[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
   
        /////////////////////////////////////////////////////
  void matrix_yaz11 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_11[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
        /////////////////////////////////////////////////////
  void matrix_yaz12 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_12[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
        /////////////////////////////////////////////////////
  void matrix_yaz13 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_13[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
          /////////////////////////////////////////////////////
  void matrix_yaz14 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_14[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
/////////////////////////////////////////////////////
  void matrix_yaz15 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_15[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
   
 /////////////////////////////////////////////////////
  void matrix_yaz16 (void)
{    for(j=0;j<8;j++ )
    {
      PORTB= animasyon_16[i*8+j];
      PORTD=sutun_tablo[j];
      delay_us(500);
      PORTD=0;
   }
   }
   
   