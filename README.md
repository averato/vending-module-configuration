# Vending Module Configuration

## Generate a GitHub token
1. Go to https://github.com/settings/tokens/new
2. Select the read:packages scope under the write:packages category
3. Click Generate token
4. Copy the token

## Usage
```bash
curl -s https://raw.githubusercontent.com/averato/vending-module-configuration/main/install.sh | bash /dev/stdin <<The GitHub token you generated>>
```
