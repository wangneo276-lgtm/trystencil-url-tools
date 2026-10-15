import test from 'node:test';
import assert from 'node:assert/strict';
import { homeUrl, metadata, pageUrl, ideaUrl } from './index.js';

test('metadata points at the live site', () => {
  const data = metadata();
  assert.equal(data.name, "TryStencil");
  assert.equal(data.homepage, "https://trystencil.org/");
  assert.equal(data.homepage.includes(' '), false);
});

test('page new', () => {
  assert.equal(pageUrl("new"), "https://trystencil.org/app/new");
});

test('page generator', () => {
  assert.equal(pageUrl("generator"), "https://trystencil.org/ai-tattoo-generator");
});

test('page try_on', () => {
  assert.equal(pageUrl("try_on"), "https://trystencil.org/try-on");
});

test('page pricing', () => {
  assert.equal(pageUrl("pricing"), "https://trystencil.org/pricing");
});

test('page font', () => {
  assert.equal(pageUrl("font"), "https://trystencil.org/tattoo-font-generator");
});

test('page stencil', () => {
  assert.equal(pageUrl("stencil"), "https://trystencil.org/stencil");
});

test('page artists', () => {
  assert.equal(pageUrl("artists"), "https://trystencil.org/artists");
});

test('page stencil_maker', () => {
  assert.equal(pageUrl("stencil_maker"), "https://trystencil.org/tattoo-stencil-maker");
});

test('page how', () => {
  assert.equal(pageUrl("how"), "https://trystencil.org/how-it-works");
});

test('page examples', () => {
  assert.equal(pageUrl("examples"), "https://trystencil.org/examples");
});

test('unknown page', () => {
  assert.throws(() => pageUrl('not-a-page'), /unknown page/);
});

test('ideaUrl', () => {
  assert.equal(ideaUrl("fine-line-wrist-tattoo"), "https://trystencil.org/ideas/fine-line-wrist-tattoo");
  assert.throws(() => ideaUrl('Not Valid'), /unknown idea/);
  assert.throws(() => ideaUrl('../x'), /unknown idea/);
});
