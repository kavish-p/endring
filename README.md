# Endring
Prototype of an Approval Management System

# Specifications
## User Roles
- Admin
- Manager
- User

## Entities
- Project (for grouping change items)
- Flow (for advanced approval flows)
- ChangeItem
  - summary
  - description
  - type
  - attachments
  - flowID
  - risk
  - tags
  - project
  - urgency

## Change Status and Transition
https://uit.stanford.edu/service/changemgt
- Draft
- Assessment
- Submitted
- Scheduled
- Work in Progress
- Closed
  - Successful
  - Unsuccessful
  - Cancelled

# TODO
## User Service
## Approval Service
- approve/decline decision of user
  - check if user is existing/active
  - check if change item exists
  - check if user is allowed to submit decision
- check approval criteria of change item

## Documents Service
- upload document and return ID/path

## Dashboard Service
## Project Service

## Change Service
- create change item
  - check if user is able to create change item

## Notification Service

## Gateway Service
- check if token is valid, if required
- route traffic to microservice