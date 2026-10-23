volatile unsigned char *const SCREEN =(volatile unsigned char *)0x10000000;
void send_lettah(char c) {*SCREEN = c;
}
void kmain(void) {
send_lettah(`H´);
send_lettah(`E´);
send_lettah(`L´);
send_lettah(`L´);
send_lettah(`O´);
send_lettah(`\n´);

while(1) {
}

}
