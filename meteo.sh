#!/bin/bash

# Nome della città (modifica a piacere o passala come parametro)
CITTA=${1:-Milano}

# File di log
LOG_FILE="./meteo.log"

# Data corrente
DATA=$(date '+%Y-%m-%d %H:%M:%S')

# Chiamata API e acquisizione risultato (formato testuale semplificato)
echo "[$DATA] Richiesta meteo per: $CITTA" | tee -a "$LOG_FILE"
RISPOSTA=$(curl -s "https://wttr.in/${CITTA}?format=3")

# Log del risultato
echo "[$DATA] Risposta: $RISPOSTA" | tee -a "$LOG_FILE"
