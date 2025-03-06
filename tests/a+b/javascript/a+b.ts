import * as readline from "node:readline";

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

rl.on("line", (input: string) => {
  const numbers = input.split(" ").map(Number);
  const sum = numbers[0] + numbers[1];
  console.log(sum);
  rl.close();
});
