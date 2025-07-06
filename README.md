 EtherSplitter

A simple Ethereum smart contract that allows users to split Ether equally among multiple recipients in a single transaction.

 Features

- Split Ether Equally: Send Ether to multiple addresses, ensuring each recipient gets the same amount.
- Input Validation: Ensures the Ether sent is divisible by the number of recipients and that all inputs are valid.
- Error Handling: Reverts the transaction if any transfer fails.

How It Works

1. The sender calls the `splitEther` function, providing an array of recipient addresses and sending Ether with the transaction.
2. The contract checks:
   - At least one recipient is provided.
   - Ether is sent with the transaction.
   - The Ether amount is exactly divisible by the number of recipients.
3. The contract sends an equal share of Ether to each recipient.

 Usage

 Deploying with Remix IDE

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file named `EtherSplitter.sol` and paste the contract code.
3. Compile the contract using the Solidity compiler.
4. Deploy the contract using the "Deploy & Run Transactions" tab.
5. Use the `splitEther` function:
   - Enter recipient addresses as an array (e.g., `["0x123...","0x456..."]`).
   - Enter the Ether amount in the "Value" field (must be divisible by the number of recipients).
   - Click "transact".

 Example

Suppose you want to split 1 Ether among 4 recipients:

- Enter 4 addresses in the array.
- Enter `1` in the "Value" field (Ether).
- Each recipient will receive `0.25` Ether.

 Security Notes

- All transfers use the low-level `call` method for compatibility.
- If any transfer fails, the entire transaction is reverted.

 License

This project is licensed under the [MIT License](LICENSE).

