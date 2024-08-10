let x = +prompt("x:");
let n = +prompt("n:");

function pow(x, n) {
    let ans = x;

    for (let i = 0; i <= n; i++) {
        ans *= x;
    }
}