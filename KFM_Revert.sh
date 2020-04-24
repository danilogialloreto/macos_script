#!/bin/bash

rm $HOME/Documents
mv $HOME/OneDrive\ -\ Soldo\ Ltd/Documents $HOME
ln -s $HOME/Documents $HOME/OneDrive\ -\ Soldo\ Ltd
rm $HOME/Desktop
mv $HOME/OneDrive\ -\ Soldo\ Ltd/Desktop $HOME
ln -s $HOME/Desktop $HOME/OneDrive\ -\ Soldo\ Ltd
