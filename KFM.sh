#!/bin/bash

rm $HOME/OneDrive\ -\ Soldo\ Ltd/Documents
mv $HOME/Documents $HOME/OneDrive\ -\ Soldo\ Ltd
ln -s $HOME/OneDrive\ -\ Soldo\ Ltd/Documents $HOME
rm $HOME/OneDrive\ -\ Soldo\ Ltd/Desktop
mv $HOME/Desktop $HOME/OneDrive\ -\ Soldo\ Ltd
ln -s $HOME/OneDrive\ -\ Soldo\ Ltd/Desktop $HOME
