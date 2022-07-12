export const milliSecondsToHHMMSS = (milliseconds: number) => {
  const hours = Math.floor(milliseconds / 3_600_000)
    .toString()
    .padStart(2, '0');
  const minutes = Math.floor(milliseconds / 60_000)
    .toString()
    .padStart(2, '0');
  const seconds = Math.round((milliseconds % 60_000) / 1_000)
    .toString()
    .padStart(2, '0');
  return `${hours}:${minutes}:${seconds}`;
};
