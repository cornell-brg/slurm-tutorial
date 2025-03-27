#include <array>
#include <gem5/m5ops.h>

const int arr_size = 100;
const int reps = 10;

int main()
{
    std::array<int, arr_size> a;
    std::array<int, arr_size> b;
    std::array<int, arr_size> c;

    for ( int i = 0; i < arr_size; i++ ) {
        a[i] = i;
        b[i] = i * i;
        c[i] = 0;
    }

    m5_dump_reset_stats( 0, 0 );
    for ( int j = 0; j < reps; j++ ) {
        for ( int i = 0; i < arr_size; i++ ) {
            c[i] = a[i] + b[i];
        }
    }
    m5_dump_reset_stats( 0, 0 );
}