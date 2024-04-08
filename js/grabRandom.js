/**
 * Selects a random item from an array and returns it along with the remaining items.
 * @param {any[]} items - The array from which to select a random item.
 * @returns {Array} An array containing the randomly selected item and the remaining items.
 * @example const [item, remainingItems] = grab([1, 2, 3, 4, 5]);
 */
export default function grabRandom(items) {
  const i = Math.floor(Math.random() * items.length);
  return [items[i], items.slice(0, i).concat(items.slice(i + 1))];
}