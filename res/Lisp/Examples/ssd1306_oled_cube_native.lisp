(def font [
    0x00 0x00 0x00 0x00 0x00  0x00 0x00 0x5F 0x00 0x00  0x00 0x07 0x00 0x07 0x00  0x14 0x7F 0x14 0x7F 0x14
    0x24 0x2A 0x7F 0x2A 0x12  0x23 0x13 0x08 0x64 0x62  0x36 0x49 0x56 0x20 0x50  0x00 0x08 0x07 0x03 0x00
    0x00 0x1C 0x22 0x41 0x00  0x00 0x41 0x22 0x1C 0x00  0x2A 0x1C 0x7F 0x1C 0x2A  0x08 0x08 0x3E 0x08 0x08
    0x00 0x80 0x70 0x30 0x00  0x08 0x08 0x08 0x08 0x08  0x00 0x00 0x60 0x60 0x00  0x20 0x10 0x08 0x04 0x02
    0x3E 0x51 0x49 0x45 0x3E  0x00 0x42 0x7F 0x40 0x00  0x72 0x49 0x49 0x49 0x46  0x21 0x41 0x49 0x4D 0x33
    0x18 0x14 0x12 0x7F 0x10  0x27 0x45 0x45 0x45 0x39  0x3C 0x4A 0x49 0x49 0x31  0x41 0x21 0x11 0x09 0x07
    0x36 0x49 0x49 0x49 0x36  0x46 0x49 0x49 0x29 0x1E  0x00 0x00 0x14 0x00 0x00  0x00 0x40 0x34 0x00 0x00
    0x00 0x08 0x14 0x22 0x41  0x14 0x14 0x14 0x14 0x14  0x00 0x41 0x22 0x14 0x08  0x02 0x01 0x59 0x09 0x06
    0x3E 0x41 0x5D 0x59 0x4E  0x7C 0x12 0x11 0x12 0x7C  0x7F 0x49 0x49 0x49 0x36  0x3E 0x41 0x41 0x41 0x22
    0x7F 0x41 0x41 0x41 0x3E  0x7F 0x49 0x49 0x49 0x41  0x7F 0x09 0x09 0x09 0x01  0x3E 0x41 0x41 0x51 0x73
    0x7F 0x08 0x08 0x08 0x7F  0x00 0x41 0x7F 0x41 0x00  0x20 0x40 0x41 0x3F 0x01  0x7F 0x08 0x14 0x22 0x41
    0x7F 0x40 0x40 0x40 0x40  0x7F 0x02 0x1C 0x02 0x7F  0x7F 0x04 0x08 0x10 0x7F  0x3E 0x41 0x41 0x41 0x3E
    0x7F 0x09 0x09 0x09 0x06  0x3E 0x41 0x51 0x21 0x5E  0x7F 0x09 0x19 0x29 0x46  0x26 0x49 0x49 0x49 0x32
    0x03 0x01 0x7F 0x01 0x03  0x3F 0x40 0x40 0x40 0x3F  0x1F 0x20 0x40 0x20 0x1F  0x3F 0x40 0x38 0x40 0x3F
    0x63 0x14 0x08 0x14 0x63  0x03 0x04 0x78 0x04 0x03  0x61 0x59 0x49 0x4D 0x43  0x00 0x7F 0x41 0x41 0x41
    0x02 0x04 0x08 0x10 0x20  0x00 0x41 0x41 0x41 0x7F  0x04 0x02 0x01 0x02 0x04  0x40 0x40 0x40 0x40 0x40
    0x00 0x03 0x07 0x08 0x00  0x20 0x54 0x54 0x78 0x40  0x7F 0x28 0x44 0x44 0x38  0x38 0x44 0x44 0x44 0x28
    0x38 0x44 0x44 0x28 0x7F  0x38 0x54 0x54 0x54 0x18  0x00 0x08 0x7E 0x09 0x02  0x18 0xA4 0xA4 0x9C 0x78
    0x7F 0x08 0x04 0x04 0x78  0x00 0x44 0x7D 0x40 0x00  0x20 0x40 0x40 0x3D 0x00  0x7F 0x10 0x28 0x44 0x00
    0x00 0x41 0x7F 0x40 0x00  0x7C 0x04 0x78 0x04 0x78  0x7C 0x08 0x04 0x04 0x78  0x38 0x44 0x44 0x44 0x38
    0xFC 0x18 0x24 0x24 0x18  0x18 0x24 0x24 0x18 0xFC  0x7C 0x08 0x04 0x04 0x08  0x48 0x54 0x54 0x54 0x24
    0x04 0x04 0x3F 0x44 0x24  0x3C 0x40 0x40 0x20 0x7C  0x1C 0x20 0x40 0x20 0x1C  0x3C 0x40 0x30 0x40 0x3C
    0x44 0x28 0x10 0x28 0x44  0x4C 0x90 0x90 0x90 0x7C  0x44 0x64 0x54 0x4C 0x44  0x00 0x08 0x36 0x41 0x00
    0x00 0x00 0x77 0x00 0x00  0x00 0x41 0x36 0x08 0x00  0x02 0x01 0x02 0x04 0x02
])

(defun putc (x row c)
    (bufcpy pixbuf (+ x 1 (* row 128)) font (* 5 (- c 32)) 5)
)

(defun putstr (x row str)
    (looprange i 0 (str-len str)
        (putc (+ x (* i 6)) row (bufget-u8 str i))
))

(def ssdacc [
    0x00 0x00 0x00 0x00 0x08 0xb5 0x07 0x4b 0x07 0x49 0x08 0x48 0x7b 0x44 0x79 0x44 0x1b 0x68 0x03 0x4b
    0x78 0x44 0x1b 0x68 0x98 0x47 0x01 0x20 0x08 0xbd 0x00 0xbf 0x00 0xf8 0x00 0x10 0xf0 0xff 0xff 0xff
    0x2f 0x00 0x00 0x00 0x18 0x00 0x00 0x00 0x65 0x78 0x74 0x2d 0x64 0x72 0x61 0x77 0x6c 0x69 0x6e 0x65
    0x00 0x00 0x00 0x00 0x2d 0xe9 0xf7 0x4f 0x3f 0x4c 0x05 0x29 0x07 0x46 0xd4 0xf8 0x94 0x50 0x75 0xd1
    0x63 0x6f 0x00 0x68 0x98 0x47 0x00 0x28 0x70 0xd0 0xe3 0x6f 0x78 0x68 0x98 0x47 0x00 0x28 0x6b 0xd0
    0xe3 0x6f 0xb8 0x68 0x98 0x47 0x00 0x28 0x66 0xd0 0xe3 0x6f 0xf8 0x68 0x98 0x47 0x00 0x28 0x61 0xd0
    0xe3 0x6f 0x38 0x69 0x98 0x47 0x00 0x28 0x5c 0xd0 0xe3 0x6e 0x38 0x68 0x98 0x47 0x63 0x6e 0x81 0x46
    0x78 0x68 0x98 0x47 0x63 0x6e 0x06 0x46 0xb8 0x68 0x98 0x47 0x63 0x6e 0x05 0x46 0xf8 0x68 0x98 0x47
    0x63 0x6e 0x80 0x46 0x38 0x69 0x98 0x47 0xa8 0xeb 0x06 0x01 0x47 0x1b 0x00 0x29 0xb8 0xbf 0x49 0x42
    0x46 0x45 0xb4 0xbf 0x4f 0xf0 0x01 0x0e 0x4f 0xf0 0xff 0x3e 0x00 0x2f 0xb8 0xbf 0x7f 0x42 0x7b 0x42
    0x00 0x93 0x85 0x42 0xb4 0xbf 0x01 0x23 0x4f 0xf0 0xff 0x33 0x01 0x93 0xca 0x1b 0x4f 0xf0 0x01 0x0a
    0x7f 0x2e 0x16 0xd8 0x3f 0x2d 0x14 0xd8 0x05 0xf0 0x07 0x0c 0x73 0x1c 0x0c 0xeb 0xc3 0x03 0x4f 0xea
    0xe5 0x0c 0x03 0xeb 0x8c 0x23 0x4f 0xea 0xd3 0x0c 0x03 0xf0 0x07 0x03 0x19 0xf8 0x0c 0xb0 0x0a 0xfa
    0x03 0xf3 0x43 0xea 0x0b 0x03 0x09 0xf8 0x0c 0x30 0xb0 0x45 0x01 0xd1 0xa8 0x42 0x10 0xd0 0x00 0x9b
    0xb3 0xeb 0x42 0x0f 0x03 0xdc 0xb0 0x45 0x0a 0xd0 0xd2 0x1b 0x76 0x44 0xb1 0xeb 0x42 0x0f 0xd7 0xdb
    0xa8 0x42 0x03 0xd0 0x01 0x9b 0x0a 0x44 0x1d 0x44 0xd1 0xe7 0xd4 0xf8 0x8c 0x50 0x28 0x46 0x03 0xb0
    0xbd 0xe8 0xf0 0x8f 0x00 0xf8 0x00 0x10
])

(load-native-lib ssdacc)

(defun line (x0 y0 x1 y1)
    (ext-drawline pixbuf x0 y0 x1 y1)
)

(def #SSD-ADDRESS 0x3c)

(def cmds-init '(
        (0xAE)      ; Display off
        (0xD5 0x80) ; Osc freq
        (0xA8 0x3F) ; Mux ratio
        (0xD3 0x00) ; Display offset
        (0x8D 0x14) ; Char reg
        (0x81 0xCF) ; Set contrast
        (0x20 0x00) ; Memory addr mode
        (0x21 0 127) ; Column addr
        (0x22 0 7) ; Page addr
        (0x40) ; Start line
        (0xA1) ; Seg remap op
        (0xC8) ; Com scan dir op
        (0xDA 0x12) ; Com pin conf
        (0xD9 0xF1) ; Precharge
        (0xDB 0x40) ; Vcom deselect
        (0xA4) ; Dis ent disp on
        (0xA6) ; Dis normal
        (0x2E) ; Deactivate scroll
        (0xAF) ; Disaply on
))

(i2c-start 'rate-700k)

(loopforeach c cmds-init
    (i2c-tx-rx #SSD-ADDRESS `(0x00 ,@c))
)

(def pixbuf (array-create 1025))
(bufset-u8 pixbuf 0 0x40) ; First byte tells the SSD1306 that this is data
(bufclear pixbuf 0 1)

; Nodes and edges of a 3d cube
(def nodes '((-1 -1 -1) (-1 -1 1) (-1 1 -1) (-1 1 1) (1 -1 -1) (1 -1 1) (1 1 -1) (1 1 1)))
(def edges '((0  1) (1 3) (3 2) (2 0) (4 5) (5 7) (7 6) (6 4) (0 4) (1 5) (2 6) (3 7)))

(defun draw-edges () {
        (var scale 25.0)
        (var ofs-x (/ 85 scale))
        (var ofs-y (/ 34 scale))
        
        (loopforeach e edges {
                (var na (ix nodes (ix e 0)))
                (var nb (ix nodes (ix e 1)))
                
                (apply line (map (fn (x) (to-i (* x scale))) (list
                            (+ ofs-x (ix na 0)) (+ ofs-y (ix na 1))
                            (+ ofs-x (ix nb 0)) (+ ofs-y (ix nb 1))
                )))
        })
})

(defun rotate (ax ay) {
        (var sx (sin ax))
        (var cx (cos ax))
        (var sy (sin ay))
        (var cy (cos ay))
        
        (loopforeach n nodes {
                (var x (ix n 0))
                (var y (ix n 1))
                (var z (ix n 2))
                
                (setix n 0 (- (* x cx) (* z sx)))
                (setix n 2 (+ (* z cx) (* x sx)))
                (setvar 'z (ix n 2))
                (setix n 1 (- (* y cy) (* z sy)))
                (setix n 2 (+ (* z cy) (* y sy)))
        })
})

(def fps 0)

(loopwhile t {
        (var t-start (systime))
        (draw-edges)
        (rotate 0.1 0.05)
        (putstr 0 7 (str-from-n fps "FPS %.1f "))
        (i2c-tx-rx #SSD-ADDRESS pixbuf)
        (bufclear pixbuf 0 1)
        (setq fps (/ 1 (secs-since t-start)))
        (sleep 0.01)
})
