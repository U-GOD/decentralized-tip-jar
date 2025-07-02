# Decentralized Tip Jar

A simple Solidity smart contract to let anyone send ETH tips to any recipient address, with on-chain tracking of who sent the tips.

## ✨ Features

- Anyone can send ETH to any recipient.
- Keeps a record of tippers per recipient.
- Emits an event for each tip, enabling transparent logging.

## 🛠️ Built With

- Solidity ^0.8.20
- zkSync Era Testnet (for deployment)
- Remix IDE

## 📄 Smart Contract Details

- Contract: `DecentralizedTipJar`
- Key Components:
  - `function tip(address recipient) external payable`: Send ETH to a recipient.
  - `mapping(address => address[]) public tippers`: Tracks who tipped each recipient.
  - `event TipSent(address from, address to, uint256 amount)`: Logs every tip.

## 🚀 How to Use

1. Deploy to your preferred network (e.g., zkSync Era Testnet).
2. Call `tip()` to send ETH tips.
3. Retrieve the list of tippers with `tippers(recipient, index)`.

## 📬 License

MIT License
