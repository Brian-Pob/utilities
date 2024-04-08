import { describe, it } from "bun:test";
import { grabRandom } from "./grabRandom.js";

describe("grabRandom", () => {
	it("should return an array with four elements", () => {
		const result = grabRandom([1, 2, 3, 4, 5]);
		if (!Array.isArray(result) || result.length !== 2) {
			throw new Error("Result is not an array with four elements");
		}
	});

	it("should return the selected item as the first element", () => {
		const items = [1, 2, 3, 4, 5];
		const [item] = grabRandom(items);
		if (!items.includes(item)) {
			throw new Error("Selected item is not from the original array");
		}
	});

	it("should return the remaining items as the second element", () => {
		const items = [1, 2, 3, 4, 5];
		const [, remaining] = grabRandom(items);
		if (!Array.isArray(remaining) || remaining.length !== 4) {
			throw new Error("Remaining items are not an array with four elements");
		}
	});

	it("should return the remaining items without the selected item", () => {
		const items = [1, 2, 3, 4, 5];
		const [item, remaining] = grabRandom(items);
		if (remaining.includes(item)) {
			throw new Error("Remaining items contain the selected item");
		}
	});

	it("should return the remaining items as an array", () => {
		const items = [1, 2, 3, 4, 5];
		const [, remaining] = grabRandom(items);
		if (!Array.isArray(remaining)) {
			throw new Error("Remaining items are not an array");
		}
	});

	it("should not mutate the original array", () => {
		const items = [1, 2, 3, 4, 5];
		const itemsCopy = [...items];
		grabRandom(items);
		if (JSON.stringify(items) !== JSON.stringify(itemsCopy)) {
			throw new Error("Original array was mutated");
		}
	});
});
