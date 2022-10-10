#

url=ipns://QmPvMtMFoUsx9JNGLaVBFESQj8GwGm7ewzuyfBY9KeCsBp
michelc=Fg2RSRChcR5m1x8wTJWYbA1GD6kcKytcQM12kDNApf37
michel_sollet=14dNTfAR3MPU63CPbCjLx7tEQv4MnSpYP6s9VF3HG28R

keypair=$HOME/keybase/SOLkeys/$michelc.json
keypair=${keypair:-$HOME/.config/solana/devnet.json}
solana config set -k $keypair
wallet=$(solana address)


spl-token create-token -v --decimals 5
tokenid=E5d55Pq6SfTHjaLyjrvMb1kdcVeyvifricA9NV1JJtqh
spl-token supply $tokenid
spl-token create-account $tokenid
spl-token balance $tokenid
spl-token mint $tokenid 2
spl-token supply $tokenid
spl-token balance $tokenid
spl-token accounts
