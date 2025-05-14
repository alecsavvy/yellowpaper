# Audius Protocol Yellow Paper
Author: Alec Savoy

# Abstract

_A brief summary of the protocol, its purpose, and the core innovations or problems it solves._

# Table of Contents

- [Abstract](#abstract)
- [Introduction](#introduction)
- [Motivation and Design Goals](#motivation-and-design-goals)
- [System Overview](#system-overview)
- [Relationship to Ethereum](#relationship-to-ethereum)
- [Validators and Archive Nodes](#validators-and-archive-nodes)
- [Consensus and Networking](#consensus-and-networking)
- [State and Storage](#state-and-storage)
- [Protocol Specification and DDEX](#protocol-specification-and-ddex)
- [Composition System and Attestations](#composition-system-and-attestations)
- [Accounts, Entities, and Gas](#accounts-entities-and-gas)
- [Proof of Work and Storage](#proof-of-work-and-storage)
- [Security Considerations](#security-considerations)
- [Future Work](#future-work)
- [Glossary](#glossary)
- [Bibliography](#bibliography)

# Introduction

_The audius protocol, powered by the audiusd platform, is what gives the open audio protocol life._

# Motivation and Design Goals

_The music industry works very hard to prop up anyone but artists and their supporters. The open audio protocol is the solution to prioritizing the creators and listeners._

# System Overview

_OAP is powered by validators, hydrated by artist's content, and populated by consumers of said content._

# Relationship to Ethereum

## Relevant Ethereum Contracts

## Registry Bridge

## Proportional Rewards

# Validators and Archive Nodes

## Validator

## Archive

## Block and State Sync

## Initial Starting State

_The audius application has existed longer than the L1. How is this existing state included on chain?_

# Consensus and Networking

## CometBFT and ABCI

## Mempool

# State and Storage

## Storing Blobs

## Signed Upload and Streaming URLs

## Play Records

_At what point is a play record persisted to chain?_

# Protocol Specification and DDEX

## Protobuf, GRPC, and ConnectRPC

_If it walks and talks like an audius node, it must be an audius node._

## HTTP Routes

_The protocol spec may include a few http specific routes. Signed streaming url for those with disk storage. Simple GET routes for k8s support. CometBFT jsonRPC routes for state sync. etc_

# Composition System and Attestations

## Creating, Accessing, and Destroying Compositions

_Compositions are analogous to smart contracts in the OAP. In many cases there is a reason to be able to query for specific data on chain and receive off chain verifiability that something happened. A trending calculation for example. Compositions exist to make public records of attestation algorithms within the L1. This way if there is a dispute on a trending algorithm, someone can deploy a competing one. Then calling this composition would result in an attestation from a validator and the caller can take that receipt and do something else with it._

# Accounts, Entities, and Gas

_Everything is an address. Accounts, Tracks, Compositions, etc._

# Proof of Work and Storage

_The protocol provides records and queries to implement proof of work and storage. Naively put, block production is proof of work and existence of files is proof of storage._

# Security Considerations

# Future Work

# Glossary

| Term | Definition |
|------|------------|
| ABCI | Application Blockchain Interface – CometBFT’s state transition interface. |
| CID  | Content Identifier, a hash-based reference to content. |
| ...  | ... |

# Bibliography

1. [CometBFT Docs](https://docs.cometbft.com)
2. [Ethereum Yellow Paper](https://ethereum.github.io/yellowpaper/paper.pdf)
3. [Filecoin Spec](https://spec.filecoin.io/)
4. ...

