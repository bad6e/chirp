export const byCreatedAt = () => {
  return (itemOne, itemTwo) => new Date(itemOne.created_at) - new Date(itemTwo.created_at)
}

export const formatTime = (timeStamp = new Date()) => {
  return new Date(Date.parse(timeStamp)).toLocaleTimeString()
}
