export const useMaxPages = <T>(dataElements: T[], PAGE_SIZE: number): number =>
  Math.ceil(dataElements.length / PAGE_SIZE);

export const useGetPage = <T>(dataElements: T[], current: number, PAGE_SIZE: number): T[] => {
  const index = (current - 1) * PAGE_SIZE;
  return dataElements.slice(index, index + PAGE_SIZE);
};

