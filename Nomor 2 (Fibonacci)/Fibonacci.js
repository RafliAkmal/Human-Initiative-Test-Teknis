function fibonacci(n) {
    if (n < 2) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

for (let i = 1; i <= 25; i++) {
    console.log(fibonacci(i));
}

/*
Penjelasan:
    Fibonacci adalah deret angka yang dimulai dari 0 dan 1, kemudian angka selanjutnya adalah hasil penjumlahan dari dua angka sebelumnya.

    Fibonacci(0) = 0
    Fibonacci(1) = 1
    Fibonacci(n) = Fibonacci(n-1) + Fibonacci(n-2) , untuk n > 1

    Oleh karena itu, kita bisa membuat fungsi fibonacci yang menerima parameter n, dan mengembalikan nilai fibonacci(n).
*/

/* 
output: 
    1
    1
    2
    3
    5
    8
    13
    21
    34
    55
    89
    144
    233
    377
    610
    987
    1597
    2584
    4181
    6765
    10946
    17711
    28657
    46368
    75025
*/


